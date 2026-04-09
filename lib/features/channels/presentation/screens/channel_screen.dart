// import 'package:android_intent_plus/android_intent.dart';
// import 'package:android_intent_plus/flag.dart';
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:korrrrrrrr/screens/chanal_screens/cahanal_card.dart';
// import 'package:korrrrrrrr/widget/install.dart';
// import 'package:share_plus/share_plus.dart';

// class ChannelsPage extends StatefulWidget {
//   const ChannelsPage({super.key});

//   @override
//   State<ChannelsPage> createState() => _ChannelsPageState();
// }

// class _ChannelsPageState extends State<ChannelsPage> {
//   Future<void> playVideoExternally(
//     BuildContext context, {
//     required String link,
//     required String channelId,
//   }) async {
//     print("ءؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤ");

//     print(channelId);
//     if (link.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('رابط القناة غير متوفر'),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }

//     String videoUrl = link;

//     const String playerPackage = 'com.skoplayer.pro';
//     const String playStoreUrl =
//         'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

//     // 1- التحقق من تثبيت التطبيق
//     bool ok = await AppChecker.isAppInstalledd(playerPackage);

//     if (!ok) {
//       // 2- إظهار نافذة شبيهة بالصورة
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(16),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 height: 50,
//                 width: 50,
//                 child: Image.asset("assets/images/iconnn.jpg"),
//               ),
//               const SizedBox(height: 12),
//               const Text(
//                 'المشغّل غير مثبت!',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),
//               const Text(
//                 'قم بتثبيت المشغّل من أجل المشاهدة .',
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//           actions: [
//             TextButton(
//               child: const Text('إلغاء'),
//               onPressed: () => Navigator.pop(context),
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
//               child: const Text('تثبيت'),
//               onPressed: () async {
//                 Navigator.pop(context);
//                 final intent = AndroidIntent(
//                   action: 'action_view',
//                   data: playStoreUrl,
//                   package: 'com.android.vending',
//                 );
//                 await intent.launch();
//               },
//             ),
//           ],
//         ),
//       );
//       return;
//     }

//     // 3- إذا كان مثبتًا شغّل الرابط مباشرة
//     if (videoUrl.isEmpty) {
//       showDialog(
//         context: context,
//         builder: (_) => const AlertDialog(
//           title: Text('لا يوجد رابط مشاهدة'),
//           content: Text('عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.'),
//         ),
//       );
//       return;
//     }

//     try {
//       final intent = AndroidIntent(
//         action: 'action_view',
//         data:
//             'https://samplelib.com/lib/preview/mp4/sample-5s.mp4', // رابط وهمي
//         type: 'video/*',
//         package: 'com.skoplayer.pro',
//         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
//         arguments: {'id': channelId, 'type': 'channel'},
//       );
//       print('🚀 Sending intent with: id=$channelId, type=channel');
//       await intent.launch();
//     } catch (e) {
//       print('Error launching intent: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة المعرف.'),
//           backgroundColor: Colors.red,
//         ),
//       );
//       await Share.share(channelId);
//     }
//   }

//   String searchQuery = '';
//   bool isSearching = false;
//   final TextEditingController searchController = TextEditingController();
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     final isLandscape =
//         MediaQuery.of(context).orientation == Orientation.landscape;
//     final crossAxisCount = isLandscape ? 5 : 3;
//     final aspectRatio = isLandscape ? 0.7 : 0.75;

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: CustomScrollView(
//         slivers: [
//           // ======== AppBar ========
//           SliverAppBar(
//             backgroundColor: Colors.transparent,
//             flexibleSpace: Container(
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                   colors: [Colors.black, Colors.black.withOpacity(0.8)],
//                 ),
//               ),
//             ),
//             pinned: true,
//             floating: true,
//             snap: true,
//             elevation: 0,
//             automaticallyImplyLeading: false,
//             expandedHeight: 60,
//             leading: Container(
//               margin: const EdgeInsets.all(8),
//               decoration: BoxDecoration(
//                 color: Colors.white.withOpacity(0.1),
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: IconButton(
//                 icon: Icon(
//                   isSearching ? Icons.close : Icons.search,
//                   color: Colors.white,
//                   size: 22,
//                 ),
//                 onPressed: () {
//                   setState(() {
//                     if (isSearching) {
//                       searchQuery = '';
//                       searchController.clear();
//                     }
//                     isSearching = !isSearching;
//                   });
//                 },
//               ),
//             ),
//             title: AnimatedSwitcher(
//               duration: const Duration(milliseconds: 300),
//               child: isSearching
//                   ? Container(
//                       key: const ValueKey('searchField'),
//                       padding: const EdgeInsets.symmetric(horizontal: 16),
//                       decoration: BoxDecoration(
//                         color: Colors.white.withOpacity(0.1),
//                         borderRadius: BorderRadius.circular(25),
//                       ),
//                       child: TextField(
//                         controller: searchController,
//                         onChanged: (value) {
//                           setState(() {
//                             searchQuery = value;
//                           });
//                         },
//                         style: const TextStyle(color: Colors.white),
//                         decoration: const InputDecoration(
//                           hintText: 'ابحث عن قناة...',
//                           hintStyle: TextStyle(color: Colors.white70),
//                           border: InputBorder.none,
//                           contentPadding: EdgeInsets.symmetric(vertical: 12),
//                         ),
//                       ),
//                     )
//                   : Container(
//                       key: const ValueKey('logo'),
//                       alignment: Alignment.center,
//                       child: Image.asset(
//                         'assets/images/tt.jpg',
//                         fit: BoxFit.contain,
//                         height: kToolbarHeight - 10,
//                       ),
//                     ),
//             ),
//             actions: [
//               Container(
//                 margin: const EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//                 // child: PopupMenuButton<String>(
//                 //   icon: const Icon(Icons.tune, color: Colors.white),
//                 //   onSelected: (value) {
//                 //     setState(() {
//                 //       searchQuery = value;
//                 //     });
//                 //   },
//                 //   color: Colors.grey[900],
//                 //   shape: RoundedRectangleBorder(
//                 //     borderRadius: BorderRadius.circular(12),
//                 //   ),
//                 // itemBuilder: (BuildContext context) => [
//                 //   const PopupMenuItem<String>(
//                 //     value: 'عربية',
//                 //     child: Row(
//                 //       children: [
//                 //         Icon(Icons.flag, color: Colors.green, size: 20),
//                 //         SizedBox(width: 8),
//                 //         Text(
//                 //           'قنوات عربية',
//                 //           style: TextStyle(color: Colors.white),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 //   const PopupMenuItem<String>(
//                 //     value: 'أجنبية',
//                 //     child: Row(
//                 //       children: [
//                 //         Icon(Icons.public, color: Colors.blue, size: 20),
//                 //         SizedBox(width: 8),
//                 //         Text(
//                 //           'قنوات أجنبية',
//                 //           style: TextStyle(color: Colors.white),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 //   const PopupMenuItem<String>(
//                 //     value: '',
//                 //     child: Row(
//                 //       children: [
//                 //         Icon(Icons.grid_view, color: Colors.orange, size: 20),
//                 //         SizedBox(width: 8),
//                 //         Text(
//                 //           'عرض الكل',
//                 //           style: TextStyle(color: Colors.white),
//                 //         ),
//                 //       ],
//                 //     ),
//                 //   ),
//                 // ],
//                 // ),
//               ),
//             ],
//           ),

//           // ======== Body ========
//           StreamBuilder<QuerySnapshot>(
//             stream: _firestore
//                 .collection('channels')
//                 .orderBy('timestamp', descending: false)
//                 .snapshots(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return const SliverFillRemaining(
//                   child: Center(
//                     child: CircularProgressIndicator(
//                       valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
//                     ),
//                   ),
//                 );
//               }

//               if (snapshot.hasError) {
//                 return SliverFillRemaining(
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Icon(Icons.error, color: Colors.red, size: 60),
//                         const SizedBox(height: 16),
//                         Text(
//                           'حدث خطأ: ${snapshot.error}',
//                           style: const TextStyle(color: Colors.white),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }

//               if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                 return const SliverFillRemaining(
//                   child: Center(
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(Icons.tv_off, color: Colors.grey, size: 60),
//                         SizedBox(height: 16),
//                         Text(
//                           'لا توجد قنوات متاحة حالياً',
//                           style: TextStyle(color: Colors.white, fontSize: 16),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               }

//               final channels = snapshot.data!.docs.where((doc) {
//                 final channel = doc.data() as Map<String, dynamic>;
//                 final name = (channel['name'] ?? '').toString().toLowerCase();
//                 final query = searchQuery.toLowerCase();

//                 // لو البحث فاضي نعرض الكل، غير كده نفلتر بالاسم فقط
//                 return query.isEmpty || name.contains(query);
//               }).toList();

//               return SliverPadding(
//                 padding: const EdgeInsets.all(16),
//                 sliver: SliverGrid(
//                   delegate: SliverChildBuilderDelegate((context, index) {
//                     final doc = channels[index];
//                     final channelData = doc.data() as Map<String, dynamic>;
//                     String xxx = doc.id;

//                     final channel = Channel(
//                       name: channelData['name'] ?? 'بدون اسم',
//                       logoPath: channelData['image_url'] ?? '',
//                       quality: channelData['quality'] ?? 'HD',
//                       type: channelData['type'] ?? 'عربية',
//                       Link: channelData['link'] ?? '',
//                     );

//                     return GestureDetector(
//                       onTap: () {
//                         playVideoExternally(
//                           context,
//                           link: channel.Link,
//                           channelId: xxx, // بيمرر المعرف
//                         );
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(16),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.red.withOpacity(0.2),
//                               blurRadius: 8,
//                               offset: const Offset(0, 4),
//                             ),
//                           ],
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(16),
//                           child: Stack(
//                             fit: StackFit.expand,
//                             children: [
//                               channel.logoPath.isNotEmpty
//                                   ? Image.network(
//                                       channel.logoPath,
//                                       fit: BoxFit.cover,
//                                       errorBuilder: (_, __, ___) => Container(
//                                         color: Colors.grey[800],
//                                         child: const Icon(
//                                           Icons.tv,
//                                           size: 50,
//                                           color: Colors.white54,
//                                         ),
//                                       ),
//                                     )
//                                   : Container(
//                                       color: Colors.grey[800],
//                                       child: const Icon(
//                                         Icons.tv,
//                                         size: 50,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   gradient: LinearGradient(
//                                     begin: Alignment.topCenter,
//                                     end: Alignment.bottomCenter,
//                                     colors: [
//                                       Colors.transparent,
//                                       Colors.black.withOpacity(0.8),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                               Positioned(
//                                 bottom: 0,
//                                 left: 0,
//                                 right: 0,
//                                 child: Container(
//                                   padding: const EdgeInsets.all(12),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     mainAxisSize: MainAxisSize.min,
//                                     children: [
//                                       Text(
//                                         channel.name,
//                                         style: const TextStyle(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 14,
//                                           shadows: [
//                                             Shadow(
//                                               offset: Offset(1, 1),
//                                               blurRadius: 3,
//                                               color: Colors.black,
//                                             ),
//                                           ],
//                                         ),
//                                         maxLines: 2,
//                                         overflow: TextOverflow.ellipsis,
//                                       ),
//                                       const SizedBox(height: 4),
//                                       Row(
//                                         mainAxisAlignment:
//                                             MainAxisAlignment.spaceBetween,
//                                         children: [
//                                           Container(
//                                             padding: const EdgeInsets.symmetric(
//                                               horizontal: 6,
//                                               vertical: 2,
//                                             ),
//                                             decoration: BoxDecoration(
//                                               color: Colors.green,
//                                               borderRadius:
//                                                   BorderRadius.circular(8),
//                                             ),
//                                             child: Text(
//                                               channel.quality,
//                                               style: const TextStyle(
//                                                 color: Colors.white,
//                                                 fontSize: 10,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           ),
//                                           const Icon(
//                                             Icons.play_circle_filled,
//                                             color: Colors.red,
//                                             size: 24,
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   }, childCount: channels.length),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: crossAxisCount,
//                     mainAxisSpacing: 16,
//                     crossAxisSpacing: 16,
//                     childAspectRatio: aspectRatio,
//                   ),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:korrrrrrrr/screens/chanal_screens/cahanal_card.dart';
import 'package:korrrrrrrr/widget/install.dart';
import 'package:share_plus/share_plus.dart';

class ChannelsPage extends StatefulWidget {
  const ChannelsPage({super.key});

  @override
  State<ChannelsPage> createState() => _ChannelsPageState();
}

class _ChannelsPageState extends State<ChannelsPage> {
  // دالة لاستخراج الرقم من اسم القناة
  int _extractChannelNumber(String channelName) {
    // البحث عن أرقام في النص
    final regex = RegExp(r'(\d+)');
    final match = regex.firstMatch(channelName);
    if (match != null) {
      return int.tryParse(match.group(1)!) ?? 999;
    }
    return 999; // القنوات بدون أرقام تذهب للآخر
  }

  // دالة لمقارنة القنوات حسب الاسم مع مراعاة الأرقام
  int _compareChannels(Map<String, dynamic> a, Map<String, dynamic> b) {
    String nameA = (a['name'] ?? '').toString().toLowerCase();
    String nameB = (b['name'] ?? '').toString().toLowerCase();

    // استخراج الأرقام
    int numA = _extractChannelNumber(nameA);
    int numB = _extractChannelNumber(nameB);

    // إذا كان الاسمين يبدآن بنفس النص الأساسي (مثل "bein sport")
    String baseNameA = nameA.replaceAll(RegExp(r'\d+'), '').trim();
    String baseNameB = nameB.replaceAll(RegExp(r'\d+'), '').trim();

    if (baseNameA == baseNameB) {
      // نفس النوع من القنوات، رتب حسب الرقم
      return numA.compareTo(numB);
    } else {
      // أنواع مختلفة من القنوات، رتب أبجدياً
      return nameA.compareTo(nameB);
    }
  }

  Future<void> playVideoExternally(
    BuildContext context, {
    required String link,
    required String channelId,
  }) async {
    print("ءؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤؤ");
    print(channelId);

    if (link.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('رابط القناة غير متوفر'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    String videoUrl = link;

    const String playerPackage = 'com.skoplayer.pro';
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

    // 1- التحقق من تثبيت التطبيق
    bool ok = await AppChecker.isAppInstalledd(playerPackage);

    if (!ok) {
      // 2- إظهار نافذة التثبيت
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
        data: 'https://samplelib.com/lib/preview/mp4/sample-5s.mp4',
        type: 'video/*',
        package: 'com.skoplayer.pro',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
        arguments: {'id': channelId, 'type': 'channel'},
      );
      print('🚀 Sending intent with: id=$channelId, type=channel');
      await intent.launch();
    } catch (e) {
      print('Error launching intent: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة المعرف.'),
          backgroundColor: Colors.red,
        ),
      );
      await Share.share(channelId);
    }
  }

  String searchQuery = '';
  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final crossAxisCount = isLandscape ? 5 : 3;
    final aspectRatio = isLandscape ? 0.7 : 0.75;

    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          // ======== AppBar ========
          SliverAppBar(
            backgroundColor: Colors.transparent,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.black.withOpacity(0.8)],
                ),
              ),
            ),
            pinned: true,
            floating: true,
            snap: true,
            elevation: 0,
            automaticallyImplyLeading: false,
            expandedHeight: 60,
            leading: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                icon: Icon(
                  isSearching ? Icons.close : Icons.search,
                  color: Colors.white,
                  size: 22,
                ),
                onPressed: () {
                  setState(() {
                    if (isSearching) {
                      searchQuery = '';
                      searchController.clear();
                    }
                    isSearching = !isSearching;
                  });
                },
              ),
            ),
            title: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: isSearching
                  ? Container(
                      key: const ValueKey('searchField'),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        controller: searchController,
                        onChanged: (value) {
                          setState(() {
                            searchQuery = value;
                          });
                        },
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: 'ابحث عن قناة...',
                          hintStyle: TextStyle(color: Colors.white70),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                      ),
                    )
                  : Container(
                      key: const ValueKey('logo'),
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/tt.jpg',
                        fit: BoxFit.contain,
                        height: kToolbarHeight - 10,
                      ),
                    ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),

          // ======== Body ========
          StreamBuilder<QuerySnapshot>(
            stream: _firestore
                .collection('channels')
                .orderBy('timestamp', descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                    ),
                  ),
                );
              }

              if (snapshot.hasError) {
                return SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.error, color: Colors.red, size: 60),
                        const SizedBox(height: 16),
                        Text(
                          'حدث خطأ: ${snapshot.error}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                );
              }

              if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                return const SliverFillRemaining(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.tv_off, color: Colors.grey, size: 60),
                        SizedBox(height: 16),
                        Text(
                          'لا توجد قنوات متاحة حالياً',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                );
              }

              // جلب القنوات كـ List
              List<QueryDocumentSnapshot> allChannels = snapshot.data!.docs
                  .toList();

              // تحويل البيانات إلى Map للترتيب
              List<Map<String, dynamic>> channelsWithData = [];
              for (var doc in allChannels) {
                final channelData = doc.data() as Map<String, dynamic>;
                channelsWithData.add({...channelData, 'docId': doc.id});
              }

              // ترتيب القنوات حسب الاسم مع مراعاة الأرقام
              channelsWithData.sort((a, b) => _compareChannels(a, b));

              // فلترة حسب البحث
              final filteredChannels = channelsWithData.where((channel) {
                final name = (channel['name'] ?? '').toString().toLowerCase();
                final query = searchQuery.toLowerCase();
                return query.isEmpty || name.contains(query);
              }).toList();

              return SliverPadding(
                padding: const EdgeInsets.all(16),
                sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((context, index) {
                    final channel = filteredChannels[index];
                    final String docId = channel['docId'];

                    return GestureDetector(
                      onTap: () {
                        playVideoExternally(
                          context,
                          link: channel['link'] ?? '',
                          channelId: docId,
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.red.withOpacity(0.2),
                              blurRadius: 8,
                              offset: const Offset(0, 4),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              (channel['image_url'] != null &&
                                      channel['image_url']
                                          .toString()
                                          .isNotEmpty)
                                  ? Image.network(
                                      channel['image_url'],
                                      fit: BoxFit.cover,
                                      errorBuilder: (_, __, ___) => Container(
                                        color: Colors.grey[800],
                                        child: const Icon(
                                          Icons.tv,
                                          size: 50,
                                          color: Colors.white54,
                                        ),
                                      ),
                                    )
                                  : Container(
                                      color: Colors.grey[800],
                                      child: const Icon(
                                        Icons.tv,
                                        size: 50,
                                        color: Colors.white54,
                                      ),
                                    ),
                              Container(
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black.withOpacity(0.8),
                                    ],
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Container(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        channel['name'] ?? 'بدون اسم',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          shadows: [
                                            Shadow(
                                              offset: Offset(1, 1),
                                              blurRadius: 3,
                                              color: Colors.black,
                                            ),
                                          ],
                                        ),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 4),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 6,
                                              vertical: 2,
                                            ),
                                            decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            child: Text(
                                              channel['quality'] ?? 'HD',
                                              style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const Icon(
                                            Icons.play_circle_filled,
                                            color: Colors.red,
                                            size: 24,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }, childCount: filteredChannels.length),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    childAspectRatio: aspectRatio,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
