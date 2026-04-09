import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'package:korrrrrrrr/widget/install.dart';
import 'package:share_plus/share_plus.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

enum ContentType { series, anime }

class SeriesDetailsPage extends StatefulWidget {
  final String? seriesId;
  final String title;
  final String image;
  final String rating;
  final String year;
  final String seasons;
  final String genre;
  final String? videoLink;
  final ContentType contentType;

  const SeriesDetailsPage({
    super.key,
    this.seriesId,
    required this.title,
    required this.image,
    this.rating = 'N/A',
    this.year = "N/A",
    this.seasons = "5 مواسم",
    this.genre = "دراما، تشويق",
    this.videoLink,
    this.contentType = ContentType.series,
  });

  @override
  State<SeriesDetailsPage> createState() => _SeriesDetailsPageState();
}

class _SeriesDetailsPageState extends State<SeriesDetailsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<Episode> episodes = [];
  bool isLoadingEpisodes = true;
  String? errorMessage;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _fetchEpisodes();
  }

  Future<void> _fetchEpisodes() async {
    try {
      setState(() {
        isLoadingEpisodes = true;
        errorMessage = null;
      });

      // تحديد أسماء المجموعات حسب نوع المحتوى
      List<String> collectionNames = [];
      if (widget.contentType == ContentType.anime) {
        collectionNames = [
          'anime',
          'add_anime',
        ]; // الأنمي الأصلي + المضاف يدوياً
      } else {
        collectionNames = [
          'tv_series',
          'add_seres',
        ]; // المسلسلات الأصلية + المضافة يدوياً
      }

      List<Episode> allEpisodes = [];

      // جلب الحلقات من كل مجموعة
      for (String collectionName in collectionNames) {
        try {
          print(
            'جارٍ البحث في مجموعة: $collectionName للمعرف: ${widget.seriesId}',
          );

          final QuerySnapshot episodesSnapshot = await FirebaseFirestore
              .instance
              .collection(collectionName)
              .doc(widget.seriesId)
              .collection('episodes')
              .orderBy('episodeNumber')
              .get();

          if (episodesSnapshot.docs.isNotEmpty) {
            print(
              'تم العثور على ${episodesSnapshot.docs.length} حلقة في $collectionName',
            );

            final List<Episode> collectionEpisodes = episodesSnapshot.docs
                .map((doc) => Episode.fromFirestore(doc, collectionName))
                .toList();

            allEpisodes.addAll(collectionEpisodes);
          } else {
            print('لا توجد حلقات في $collectionName للمعرف ${widget.seriesId}');
          }
        } catch (e) {
          print('خطأ في جلب الحلقات من $collectionName: $e');
          // نتابع مع المجموعة التالية حتى لو فشلت إحداها
        }
      }

      // ترتيب الحلقات حسب رقم الحلقة
      allEpisodes.sort((a, b) => a.episodeNumber.compareTo(b.episodeNumber));

      setState(() {
        episodes = allEpisodes;
        isLoadingEpisodes = false;
      });

      print('إجمالي الحلقات المحملة: ${episodes.length}');
    } catch (e) {
      print('خطأ عام في تحميل الحلقات: $e');
      setState(() {
        isLoadingEpisodes = false;
        errorMessage = widget.contentType == ContentType.anime
            ? 'حدث خطأ في تحميل حلقات الأنمي'
            : 'حدث خطأ في تحميل حلقات المسلسل';
      });
    }
  }

  // تشغيل الحلقة
  Future<void> _playEpisode(Episode episode) async {
    if (episode.videoLink.isEmpty) {
      _showNoLinkDialog('لا يوجد رابط مشاهدة لهذه الحلقة');
      return;
    }

    const String playerPackage = 'com.skoplayer.pro';
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

    // 1- التحقق من تثبيت التطبيق
    bool ok = await AppChecker.isAppInstalledd(playerPackage);

    if (!ok) {
      // 2- إظهار نافذة شبيهة بالصورة
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/iconnn.jpg"),
              ),
              const SizedBox(height: 12),
              const Text(
                'المشغّل غير مثبت!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'قم بتثبيت المشغّل من أجل المشاهده .',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('تثبيت'),
              onPressed: () async {
                Navigator.pop(context);
                final intent = AndroidIntent(
                  action: 'action_view',
                  data: playStoreUrl,
                  package: 'com.android.vending',
                );
                await intent.launch();
              },
            ),
          ],
        ),
      );
      return;
    }

    // 3- إذا كان مثبتًا شغّل الرابط مباشرة
    if (episode.videoLink.isEmpty) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text('لا يوجد رابط مشاهدة'),
          content: Text('عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.'),
        ),
      );
      return;
    }

    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data: episode.videoLink,
        type: 'video/*',
        package: 'com.skoplayer.pro',

        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
      );
      await intent.launch();
    } catch (e) {
      print('Error launching episode: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('تعذر فتح الحلقة. جارٍ مشاركة الرابط.'),
          backgroundColor: Colors.red,
        ),
      );
      await Share.share(episode.videoLink);
    }
  }

  Future<void> playVideoExternally(BuildContext context) async {
    if (widget.videoLink == null || widget.videoLink!.isEmpty) {
      String contentTypeName = widget.contentType == ContentType.anime
          ? 'الأنمي'
          : 'المسلسل';
      _showNoLinkDialog('لا يوجد رابط مشاهدة لهذا $contentTypeName حاليًا.');
      return;
    }

    String videoUrl = widget.videoLink!;

    const String playerPackage = 'com.skoplayer.pro';
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

    // 1- التحقق من تثبيت التطبيق
    bool ok = await AppChecker.isAppInstalledd(playerPackage);

    if (!ok) {
      // 2- إظهار نافذة شبيهة بالصورة
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 50,
                width: 50,
                child: Image.asset("assets/images/iconnn.jpg"),
              ),
              const SizedBox(height: 12),
              const Text(
                'المشغّل غير مثبت!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'قم بتثبيت المشغّل من أجل المشاهدة .',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () => Navigator.pop(context),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              child: const Text('تثبيت'),
              onPressed: () async {
                Navigator.pop(context);
                final intent = AndroidIntent(
                  action: 'action_view',
                  data: playStoreUrl,
                  package: 'com.android.vending',
                );
                await intent.launch();
              },
            ),
          ],
        ),
      );
      return;
    }

    // 3- إذا كان مثبتًا شغّل الرابط مباشرة
    if (videoUrl.isEmpty) {
      showDialog(
        context: context,
        builder: (_) => const AlertDialog(
          title: Text('لا يوجد رابط مشاهدة'),
          content: Text('عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.'),
        ),
      );
      return;
    }

    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data: videoUrl,
        type: 'video/*',
        package: 'com.skoplayer.pro',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
      );
      await intent.launch();
    } catch (e) {
      print('Error launching intent: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
          backgroundColor: Colors.red,
        ),
      );
      await Share.share(videoUrl);
    }
  }

  void _showNoLinkDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF1E1E1E),
        title: const Text(
          'لا يوجد رابط مشاهدة',
          style: TextStyle(color: Colors.white),
        ),
        content: Text(message, style: TextStyle(color: Colors.white70)),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'حسناً',
              style: TextStyle(color: Color(0xFF00C853)),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final isLandscape =
              MediaQuery.of(context).orientation == Orientation.landscape;
          final screenHeight = constraints.maxHeight;
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: isLandscape ? screenHeight * 0.6 : 300,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        widget.image,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[800],
                            child: Center(
                              child: Icon(
                                widget.contentType == ContentType.anime
                                    ? Icons.movie_creation_outlined
                                    : Icons.tv,
                                size: 80,
                                color: Colors.grey[400],
                              ),
                            ),
                          );
                        },
                      ),
                      DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(0.7),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: Colors.white,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(
                      Icons.bookmark_border,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.white),
                    onPressed: () {
                      if (widget.videoLink != null &&
                          widget.videoLink!.isNotEmpty) {
                        Share.share(widget.videoLink!);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('لا يوجد رابط لمشاركته.')),
                        );
                      }
                    },
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // العنوان والمعلومات
                      isLandscape
                          ? Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: _buildTitleInfoBlock()),
                                const SizedBox(width: 12),
                                _buildHDLabel(),
                              ],
                            )
                          : Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: _buildTitleInfoBlock()),
                                _buildHDLabel(),
                              ],
                            ),
                      const SizedBox(height: 16),
                      Text(
                        widget.genre,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 24),
                      // Tabs
                      DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            TabBar(
                              controller: _tabController,
                              tabs: [
                                Tab(text: "القصة"),
                                Tab(text: "الطاقم"),
                                Tab(
                                  text: widget.contentType == ContentType.anime
                                      ? "الحلقات (${episodes.length})"
                                      : "الحلقات (${episodes.length})",
                                ),
                              ],
                              indicatorColor: Color(0xFF00C853),
                              labelColor: Colors.white,
                              unselectedLabelColor: Colors.white54,
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height *
                                  0.5, // Fixed height instead of constraints
                              child: TabBarView(
                                controller: _tabController,
                                children: [
                                  _buildStoryTab(),
                                  _buildCastTab(),
                                  _buildEpisodesTab(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                      // التفاعل
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: _buildActions(),
                      ),
                      const SizedBox(height: 24),
                      // زر المشاهدة
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: () {
                            playVideoExternally(context);
                          },
                          icon: Icon(Icons.play_arrow, color: Colors.white),
                          label: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text("ابدأ المشاهدة"),
                              SizedBox(width: 8),
                              widget.videoLink != null &&
                                      widget.videoLink!.isNotEmpty
                                  ? Icon(
                                      Icons.check_circle,
                                      color: Colors.green,
                                      size: 20,
                                    )
                                  : Icon(
                                      Icons.link_off,
                                      color: Colors.red,
                                      size: 20,
                                    ),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF00C853),
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            textStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildStoryTab() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: SingleChildScrollView(
        child: Text(
          widget.contentType == ContentType.anime
              ? "هذا هو ملخص أنمي ${widget.title}. يمكنك كتابة وصف مشوق هنا دون حرق أحداث الحلقات. يحكي الأنمي قصة مثيرة ومليئة بالمغامرات والشخصيات المميزة."
              : "هذا هو ملخص مسلسل ${widget.title}. يمكنك كتابة وصف مشوق هنا دون حرق أحداث الحلقات. يحكي المسلسل قصة مثيرة ومليئة بالأحداث المشوقة التي تجذب المشاهد من الحلقة الأولى.",
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 16,
            height: 1.5,
          ),
        ),
      ),
    );
  }

  Widget _buildCastTab() {
    return const Padding(
      padding: EdgeInsets.only(top: 16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.people, size: 60, color: Colors.white54),
            SizedBox(height: 16),
            Text(
              "قائمة الممثلين وفريق العمل",
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "سيتم إضافة معلومات الطاقم قريباً",
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEpisodesTab() {
    if (isLoadingEpisodes) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Color(0xFF00C853)),
            SizedBox(height: 16),
            Text(
              'جارٍ تحميل الحلقات من جميع المصادر...',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      );
    }

    if (errorMessage != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 60, color: Colors.red),
            SizedBox(height: 16),
            Text(
              errorMessage!,
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: _fetchEpisodes,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF00C853),
              ),
              child: Text('إعادة المحاولة'),
            ),
          ],
        ),
      );
    }

    if (episodes.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              widget.contentType == ContentType.anime
                  ? Icons.movie_creation_outlined
                  : Icons.video_library_outlined,
              size: 60,
              color: Colors.white54,
            ),
            SizedBox(height: 16),
            Text(
              widget.contentType == ContentType.anime
                  ? 'لا توجد حلقات أنمي متاحة'
                  : 'لا توجد حلقات متاحة',
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'تم البحث في جميع المصادر المتاحة',
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),
          ],
        ),
      );
    }

    return SafeArea(
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(), // Force scrolling
        padding: const EdgeInsets.only(
          top: 8,
          bottom: 80, // مساحة إضافية عشان آخر عنصر يظهر بالكامل
        ),
        itemCount: episodes.length,
        itemBuilder: (context, index) {
          final episode = episodes[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.white.withOpacity(0.1),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 8,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // صورة الحلقة
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Color(0xFF00C853), Color(0xFF4CAF50)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0xFF00C853).withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const Icon(
                          Icons.play_circle_fill,
                          color: Colors.white,
                          size: 40,
                        ),
                        Positioned(
                          bottom: 6,
                          right: 6,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '${episode.episodeNumber}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // مؤشر المصدر
                        Positioned(
                          top: 4,
                          left: 4,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 4,
                              vertical: 2,
                            ),
                            decoration: BoxDecoration(
                              color: episode.source.contains('add_')
                                  ? Colors.orange.withOpacity(0.8)
                                  : Colors.blue.withOpacity(0.8),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              episode.source.contains('add_') ? 'يدوي' : 'أصلي',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  // معلومات الحلقة
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'الحلقة ${episode.episodeNumber}: ${episode.title}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              size: 14,
                              color: Colors.white54,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              _formatDate(episode.createdAt),
                              style: const TextStyle(
                                color: Colors.white54,
                                fontSize: 12,
                              ),
                            ),
                            const SizedBox(width: 16),
                            episode.videoLink.isNotEmpty
                                ? const Icon(
                                    Icons.check_circle,
                                    size: 14,
                                    color: Colors.green,
                                  )
                                : const Icon(
                                    Icons.link_off,
                                    size: 14,
                                    color: Colors.red,
                                  ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 12),
                  // زر المشاهدة
                  Container(
                    decoration: BoxDecoration(
                      gradient: episode.videoLink.isNotEmpty
                          ? const LinearGradient(
                              colors: [Color(0xFF00C853), Color(0xFF4CAF50)],
                            )
                          : null,
                      color: episode.videoLink.isEmpty
                          ? Colors.grey[700]
                          : null,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: episode.videoLink.isNotEmpty
                          ? [
                              BoxShadow(
                                color: const Color(0xFF00C853).withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ]
                          : null,
                    ),
                    child: ElevatedButton(
                      onPressed: episode.videoLink.isNotEmpty
                          ? () => _playEpisode(episode)
                          : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 12,
                        ),
                      ),
                      child: const Text(
                        'مشاهدة',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }

  Widget _buildHDLabel() {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF00C853),
        borderRadius: BorderRadius.circular(4),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: const Text(
        "HD",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _buildTitleInfoBlock() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.star, color: Colors.amber, size: 20),
            const SizedBox(width: 4),
            Text(
              widget.rating,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(width: 16),
            Text(
              widget.year,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
            const SizedBox(width: 16),
            Text(
              widget.seasons,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildActions() {
    return [
      Column(
        children: [
          IconButton(
            icon: const Icon(Icons.add, color: Colors.white, size: 28),
            onPressed: () {},
          ),
          const Text("قائمتي", style: TextStyle(color: Colors.white70)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: const Icon(Icons.thumb_up, color: Colors.white, size: 28),
            onPressed: () {},
          ),
          const Text("أعجبني", style: TextStyle(color: Colors.white70)),
        ],
      ),
      Column(
        children: [
          IconButton(
            icon: const Icon(Icons.star_border, color: Colors.white, size: 28),
            onPressed: () {},
          ),
          const Text("تقييمي", style: TextStyle(color: Colors.white70)),
        ],
      ),
    ];
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class Episode {
  final String id;
  final String title;
  final String description;
  final int episodeNumber;
  final int seasonNumber;
  final String videoLink;
  final DateTime createdAt;
  final String source; // لتتبع مصدر الحلقة

  Episode({
    required this.id,
    required this.title,
    required this.description,
    required this.episodeNumber,
    required this.seasonNumber,
    required this.videoLink,
    required this.createdAt,
    required this.source,
  });

  factory Episode.fromFirestore(DocumentSnapshot doc, String collectionName) {
    final data = doc.data() as Map<String, dynamic>;
    return Episode(
      id: data['id'] ?? doc.id,
      title: data['title'] ?? 'بدون عنوان',
      description: data['description'] ?? '',
      episodeNumber: data['episodeNumber'] ?? 0,
      seasonNumber: data['seasonNumber'] ?? 1,
      videoLink: data['videoLink'] ?? '',
      createdAt: (data['createdAt'] as Timestamp?)?.toDate() ?? DateTime.now(),
      source: collectionName, // حفظ مصدر الحلقة
    );
  }
}
