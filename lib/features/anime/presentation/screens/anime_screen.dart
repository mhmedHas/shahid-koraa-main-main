// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:koraa/screens/film_screens/film_deitels.dart';
// // // // // // // import 'package:koraa/serias_screens/series_detiels.dart';

// // // // // // // class AnimePage extends StatelessWidget {
// // // // // // //   const AnimePage({super.key});

// // // // // // //   final List<Map<String, String>> animes = const [
// // // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // // //   ];

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: Colors.black,
// // // // // // //       appBar: AppBar(
// // // // // // //         elevation: 4,
// // // // // // //         automaticallyImplyLeading: false,
// // // // // // //         backgroundColor: Colors.transparent,
// // // // // // //         title: const Text(
// // // // // // //           '🎬 انمى ',
// // // // // // //           style: TextStyle(
// // // // // // //             color: Colors.white,
// // // // // // //             fontWeight: FontWeight.bold,
// // // // // // //             fontSize: 22,
// // // // // // //             letterSpacing: 1.2,
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         centerTitle: true,
// // // // // // //       ),
// // // // // // //       body: GridView.builder(
// // // // // // //         padding: const EdgeInsets.all(12),
// // // // // // //         itemCount: animes.length,
// // // // // // //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// // // // // // //           crossAxisCount: 2,
// // // // // // //           mainAxisSpacing: 20,
// // // // // // //           crossAxisSpacing: 20,
// // // // // // //           childAspectRatio: 2 / 3,
// // // // // // //         ),
// // // // // // //         itemBuilder: (context, index) {
// // // // // // //           final movie = animes[index];
// // // // // // //           return GestureDetector(
// // // // // // //             onTap: () {
// // // // // // //               Navigator.push(
// // // // // // //                 context,
// // // // // // //                 MaterialPageRoute(
// // // // // // //                   builder:
// // // // // // //                       (_) => SeriesDetailsPage(
// // // // // // //                         title: movie["title"]!,
// // // // // // //                         image: movie["image"]!,
// // // // // // //                       ),
// // // // // // //                 ),
// // // // // // //               );
// // // // // // //             },

// // // // // // //             child: Container(
// // // // // // //               decoration: BoxDecoration(
// // // // // // //                 color: Colors.white10,
// // // // // // //                 borderRadius: BorderRadius.circular(16),
// // // // // // //                 boxShadow: [
// // // // // // //                   BoxShadow(
// // // // // // //                     color: Colors.red.withOpacity(0.2),
// // // // // // //                     blurRadius: 8,
// // // // // // //                     offset: const Offset(0, 4),
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //               child: Column(
// // // // // // //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // // // //                 children: [
// // // // // // //                   Expanded(
// // // // // // //                     child: ClipRRect(
// // // // // // //                       borderRadius: const BorderRadius.vertical(
// // // // // // //                         top: Radius.circular(16),
// // // // // // //                       ),
// // // // // // //                       child: Image.asset(movie["image"]!, fit: BoxFit.cover),
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                   Container(
// // // // // // //                     decoration: const BoxDecoration(
// // // // // // //                       color: Colors.black,
// // // // // // //                       borderRadius: BorderRadius.vertical(
// // // // // // //                         bottom: Radius.circular(16),
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                     padding: const EdgeInsets.symmetric(
// // // // // // //                       vertical: 10,
// // // // // // //                       horizontal: 8,
// // // // // // //                     ),
// // // // // // //                     child: Text(
// // // // // // //                       movie["title"]!,
// // // // // // //                       style: const TextStyle(
// // // // // // //                         color: Colors.white,
// // // // // // //                         fontWeight: FontWeight.bold,
// // // // // // //                         fontSize: 15,
// // // // // // //                         height: 1.3,
// // // // // // //                       ),
// // // // // // //                       textAlign: TextAlign.center,
// // // // // // //                       maxLines: 2,
// // // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           );
// // // // // // //         },
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // import 'package:flutter/material.dart';
// // // // // // // import 'package:koraa/serias_screens/series_detiels.dart';

// // // // // // // class AnimePage extends StatefulWidget {
// // // // // // //   const AnimePage({super.key});

// // // // // // //   @override
// // // // // // //   State<AnimePage> createState() => _AnimePageState();
// // // // // // // }

// // // // // // // class _AnimePageState extends State<AnimePage> {
// // // // // // //   final List<Map<String, String>> allAnimes = [
// // // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // // //   ];

// // // // // // //   String searchQuery = '';

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     final List<Map<String, String>> filteredAnimes =
// // // // // // //         allAnimes
// // // // // // //             .where(
// // // // // // //               (anime) => anime['title']!.toLowerCase().contains(
// // // // // // //                 searchQuery.toLowerCase(),
// // // // // // //               ),
// // // // // // //             )
// // // // // // //             .toList();

// // // // // // //     return Scaffold(
// // // // // // //       backgroundColor: Colors.black,
// // // // // // //       appBar: AppBar(
// // // // // // //         elevation: 4,
// // // // // // //         automaticallyImplyLeading: false,
// // // // // // //         backgroundColor: Colors.transparent,
// // // // // // //         title: Container(
// // // // // // //           // استبدل Text بـ Container للصورة
// // // // // // //           height: kToolbarHeight, // ارتفاع AppBar القياسي
// // // // // // //           child: Image.asset(
// // // // // // //             'assets/images/tt.jpg',
// // // // // // //             fit: BoxFit.cover, // تغطية المساحة المتاحة
// // // // // // //           ),
// // // // // // //         ),
// // // // // // //         centerTitle: true,
// // // // // // //       ),
// // // // // // //       body: Column(
// // // // // // //         children: [
// // // // // // //           // 🔍 شريط البحث
// // // // // // //           Padding(
// // // // // // //             padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// // // // // // //             child: TextField(
// // // // // // //               onChanged: (value) {
// // // // // // //                 setState(() {
// // // // // // //                   searchQuery = value;
// // // // // // //                 });
// // // // // // //               },
// // // // // // //               style: const TextStyle(color: Colors.white),
// // // // // // //               decoration: InputDecoration(
// // // // // // //                 hintText: 'ابحث عن أنمي...',
// // // // // // //                 hintStyle: const TextStyle(color: Colors.grey),
// // // // // // //                 prefixIcon: const Icon(Icons.search, color: Colors.white),
// // // // // // //                 filled: true,
// // // // // // //                 fillColor: Colors.white10,
// // // // // // //                 border: OutlineInputBorder(
// // // // // // //                   borderRadius: BorderRadius.circular(12),
// // // // // // //                   borderSide: BorderSide.none,
// // // // // // //                 ),
// // // // // // //               ),
// // // // // // //             ),
// // // // // // //           ),

// // // // // // //           // 🌀 شبكة عرض الأنمي
// // // // // // //           Expanded(
// // // // // // //             child: GridView.builder(
// // // // // // //               padding: const EdgeInsets.all(12),
// // // // // // //               itemCount: filteredAnimes.length,
// // // // // // //               gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
// // // // // // //                 crossAxisCount: 3,
// // // // // // //                 mainAxisSpacing: 20,
// // // // // // //                 crossAxisSpacing: 20,
// // // // // // //                 childAspectRatio: 2 / 3,
// // // // // // //               ),
// // // // // // //               itemBuilder: (context, index) {
// // // // // // //                 final anime = filteredAnimes[index];
// // // // // // //                 return GestureDetector(
// // // // // // //                   onTap: () {
// // // // // // //                     Navigator.push(
// // // // // // //                       context,
// // // // // // //                       MaterialPageRoute(
// // // // // // //                         builder:
// // // // // // //                             (_) => SeriesDetailsPage(
// // // // // // //                               title: anime["title"]!,
// // // // // // //                               image: anime["image"]!,
// // // // // // //                             ),
// // // // // // //                       ),
// // // // // // //                     );
// // // // // // //                   },
// // // // // // //                   child: Container(
// // // // // // //                     decoration: BoxDecoration(
// // // // // // //                       color: Colors.white10,
// // // // // // //                       borderRadius: BorderRadius.circular(16),
// // // // // // //                       boxShadow: [
// // // // // // //                         BoxShadow(
// // // // // // //                           color: Colors.red.withOpacity(0.2),
// // // // // // //                           blurRadius: 8,
// // // // // // //                           offset: const Offset(0, 4),
// // // // // // //                         ),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                     child: Column(
// // // // // // //                       crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // // // //                       children: [
// // // // // // //                         Expanded(
// // // // // // //                           child: ClipRRect(
// // // // // // //                             borderRadius: const BorderRadius.vertical(
// // // // // // //                               top: Radius.circular(16),
// // // // // // //                             ),
// // // // // // //                             child: Image.asset(
// // // // // // //                               anime["image"]!,
// // // // // // //                               fit: BoxFit.cover,
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                         Container(
// // // // // // //                           decoration: const BoxDecoration(
// // // // // // //                             color: Colors.black,
// // // // // // //                             borderRadius: BorderRadius.vertical(
// // // // // // //                               bottom: Radius.circular(16),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                           padding: const EdgeInsets.symmetric(
// // // // // // //                             vertical: 10,
// // // // // // //                             horizontal: 8,
// // // // // // //                           ),
// // // // // // //                           child: Text(
// // // // // // //                             anime["title"]!,
// // // // // // //                             style: const TextStyle(
// // // // // // //                               color: Colors.white,
// // // // // // //                               fontWeight: FontWeight.bold,
// // // // // // //                               fontSize: 15,
// // // // // // //                               height: 1.3,
// // // // // // //                             ),
// // // // // // //                             textAlign: TextAlign.center,
// // // // // // //                             maxLines: 2,
// // // // // // //                             overflow: TextOverflow.ellipsis,
// // // // // // //                           ),
// // // // // // //                         ),
// // // // // // //                       ],
// // // // // // //                     ),
// // // // // // //                   ),
// // // // // // //                 );
// // // // // // //               },
// // // // // // //             ),
// // // // // // //           ),
// // // // // // //         ],
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';
// // // // // // import 'package:koraa/serias_screens/series_detiels.dart';

// // // // // // class AnimePage extends StatefulWidget {
// // // // // //   const AnimePage({super.key});

// // // // // //   @override
// // // // // //   State<AnimePage> createState() => _AnimePageState();
// // // // // // }

// // // // // // class _AnimePageState extends State<AnimePage> {
// // // // // //   final List<Map<String, String>> allAnimes = [
// // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // //     {"title": "Attack on Titan", "image": "assets/anime/1.jpg"},
// // // // // //     {"title": "Demon Slayer", "image": "assets/anime/2.jpg"},
// // // // // //     {"title": "One Piece", "image": "assets/anime/3.jpg"},
// // // // // //     {"title": "Naruto", "image": "assets/anime/4.jpg"},
// // // // // //     {"title": "Jujutsu Kaisen", "image": "assets/anime/5.jpg"},
// // // // // //   ];

// // // // // //   String searchQuery = '';
// // // // // //   bool isSearching = false;
// // // // // //   TextEditingController searchController = TextEditingController();

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return OrientationBuilder(
// // // // // //       builder: (context, orientation) {
// // // // // //         final bool isLandscape = orientation == Orientation.landscape;
// // // // // //         final int crossAxisCount = isLandscape ? 7 : 3;
// // // // // //         final double aspectRatio = isLandscape ? 0.55 : .48;

// // // // // //         final List<Map<String, String>> filteredAnimes =
// // // // // //             allAnimes
// // // // // //                 .where(
// // // // // //                   (anime) => anime['title']!.toLowerCase().contains(
// // // // // //                     searchQuery.toLowerCase(),
// // // // // //                   ),
// // // // // //                 )
// // // // // //                 .toList();

// // // // // //         return Scaffold(
// // // // // //           backgroundColor: Colors.black,
// // // // // //           body: CustomScrollView(
// // // // // //             slivers: [
// // // // // //               // ✅ AppBar بصورة
// // // // // //               SliverAppBar(
// // // // // //                 backgroundColor: Colors.black,
// // // // // //                 pinned: true,
// // // // // //                 floating: true,
// // // // // //                 snap: true,
// // // // // //                 elevation: 4,
// // // // // //                 automaticallyImplyLeading: false,
// // // // // //                 expandedHeight: 60,
// // // // // //                 bottom: PreferredSize(
// // // // // //                   preferredSize: const Size.fromHeight(1),
// // // // // //                   child: Container(height: 1, color: Colors.grey),
// // // // // //                 ),
// // // // // //                 // ✅ أيقونة البحث على اليسار
// // // // // //                 leading: IconButton(
// // // // // //                   icon: Icon(
// // // // // //                     isSearching ? Icons.close : Icons.search,
// // // // // //                     color: Colors.white,
// // // // // //                     size: 25,
// // // // // //                   ),
// // // // // //                   onPressed: () {
// // // // // //                     setState(() {
// // // // // //                       if (isSearching) {
// // // // // //                         searchQuery = '';
// // // // // //                         searchController.clear();
// // // // // //                       }
// // // // // //                       isSearching = !isSearching;
// // // // // //                     });
// // // // // //                   },
// // // // // //                 ),
// // // // // //                 // ✅ العنوان (شعار أو مربع البحث)
// // // // // //                 title:
// // // // // //                     isSearching
// // // // // //                         ? TextField(
// // // // // //                           controller: searchController,
// // // // // //                           onChanged: (value) {
// // // // // //                             setState(() {
// // // // // //                               searchQuery = value;
// // // // // //                             });
// // // // // //                           },
// // // // // //                           style: const TextStyle(color: Colors.white),
// // // // // //                           decoration: const InputDecoration(
// // // // // //                             hintText: 'ابحث عن أنمي...',
// // // // // //                             hintStyle: TextStyle(color: Colors.grey),
// // // // // //                             border: InputBorder.none,
// // // // // //                           ),
// // // // // //                         )
// // // // // //                         : Center(
// // // // // //                           child: Image.asset(
// // // // // //                             'assets/images/tt.jpg',
// // // // // //                             fit: BoxFit.contain,
// // // // // //                             height: kToolbarHeight - 10,
// // // // // //                           ),
// // // // // //                         ),
// // // // // //                 // ✅ ممكن تضيف زر القائمة في اليمين هنا لو تحب
// // // // // //                 actions: [
// // // // // //                   // مثال على زر قائمة
// // // // // //                   PopupMenuButton<String>(
// // // // // //                     icon: const Icon(Icons.menu, color: Colors.white),
// // // // // //                     onSelected: (value) {
// // // // // //                       print('$value تم اختياره');
// // // // // //                     },
// // // // // //                     color: Colors.grey[900],
// // // // // //                     itemBuilder:
// // // // // //                         (BuildContext context) => [
// // // // // //                           const PopupMenuItem<String>(
// // // // // //                             value: 'أجنبية',
// // // // // //                             child: Text(
// // // // // //                               '🎬 أنمي أجنبي',
// // // // // //                               style: TextStyle(color: Colors.white),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                           const PopupMenuItem<String>(
// // // // // //                             value: 'ياباني',
// // // // // //                             child: Text(
// // // // // //                               '🎌 أنمي ياباني',
// // // // // //                               style: TextStyle(color: Colors.white),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                         ],
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),

// // // // // //               // ✅ شبكة الأنمي
// // // // // //               SliverPadding(
// // // // // //                 padding: const EdgeInsets.all(12),
// // // // // //                 sliver: SliverGrid(
// // // // // //                   delegate: SliverChildBuilderDelegate((context, index) {
// // // // // //                     final anime = filteredAnimes[index];
// // // // // //                     return GestureDetector(
// // // // // //                       onTap: () {
// // // // // //                         Navigator.push(
// // // // // //                           context,
// // // // // //                           MaterialPageRoute(
// // // // // //                             builder:
// // // // // //                                 (_) => SeriesDetailsPage(
// // // // // //                                   title: anime["title"]!,
// // // // // //                                   image: anime["image"]!,
// // // // // //                                 ),
// // // // // //                           ),
// // // // // //                         );
// // // // // //                       },
// // // // // //                       child: Container(
// // // // // //                         decoration: BoxDecoration(
// // // // // //                           color: Colors.white10,
// // // // // //                           borderRadius: BorderRadius.circular(16),
// // // // // //                           boxShadow: [
// // // // // //                             BoxShadow(
// // // // // //                               color: Colors.red.withOpacity(0.2),
// // // // // //                               blurRadius: 8,
// // // // // //                               offset: const Offset(0, 4),
// // // // // //                             ),
// // // // // //                           ],
// // // // // //                         ),
// // // // // //                         child: Column(
// // // // // //                           crossAxisAlignment: CrossAxisAlignment.stretch,
// // // // // //                           children: [
// // // // // //                             Expanded(
// // // // // //                               child: ClipRRect(
// // // // // //                                 borderRadius: const BorderRadius.vertical(
// // // // // //                                   top: Radius.circular(16),
// // // // // //                                 ),
// // // // // //                                 child: Image.asset(
// // // // // //                                   anime["image"]!,
// // // // // //                                   fit: BoxFit.cover,
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                             Container(
// // // // // //                               height: 50,

// // // // // //                               decoration: const BoxDecoration(
// // // // // //                                 color: Color.fromARGB(255, 255, 255, 255),
// // // // // //                                 borderRadius: BorderRadius.vertical(
// // // // // //                                   bottom: Radius.circular(16),
// // // // // //                                 ),
// // // // // //                               ),
// // // // // //                               padding: const EdgeInsets.symmetric(
// // // // // //                                 vertical: 8,
// // // // // //                                 horizontal: 6,
// // // // // //                               ),
// // // // // //                               child: Text(
// // // // // //                                 anime["title"]!,
// // // // // //                                 style: const TextStyle(
// // // // // //                                   color: Color.fromARGB(255, 0, 0, 0),
// // // // // //                                   fontWeight: FontWeight.bold,
// // // // // //                                   fontSize: 13,
// // // // // //                                   height: 1.3,
// // // // // //                                 ),
// // // // // //                                 textAlign: TextAlign.center,
// // // // // //                                 maxLines: 2,
// // // // // //                                 overflow: TextOverflow.ellipsis,
// // // // // //                               ),
// // // // // //                             ),
// // // // // //                           ],
// // // // // //                         ),
// // // // // //                       ),
// // // // // //                     );
// // // // // //                   }, childCount: filteredAnimes.length),
// // // // // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // // // //                     crossAxisCount: crossAxisCount,
// // // // // //                     mainAxisSpacing: 16,
// // // // // //                     crossAxisSpacing: 16,
// // // // // //                     childAspectRatio: aspectRatio,
// // // // // //                   ),
// // // // // //                 ),
// // // // // //               ),
// // // // // //             ],
// // // // // //           ),
// // // // // //         );
// // // // // //       },
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'dart:async';

// // // // // import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // // // // class AnimePage extends StatefulWidget {
// // // // //   @override
// // // // //   _AnimePageState createState() => _AnimePageState();
// // // // // }

// // // // // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// // // // //   PageController _pageController = PageController();
// // // // //   TextEditingController _searchController = TextEditingController();
// // // // //   Timer? _timer;
// // // // //   int _currentPage = 0;
// // // // //   bool _isSearching = false;
// // // // //   bool _showSearchBar = false;
// // // // //   List<Map<String, String>> _filteredAnimes = [];
// // // // //   late AnimationController _animationController;
// // // // //   late Animation<double> _fadeAnimation;

// // // // //   final List<Map<String, String>> allAnimes = [
// // // // //     {
// // // // //       "title": "Attack on Titan",
// // // // //       "image": "assets/anime/1.jpg",
// // // // //       "rating": "9.0",
// // // // //       "year": "2013",
// // // // //       "genre": "Action",
// // // // //     },
// // // // //     {
// // // // //       "title": "Demon Slayer",
// // // // //       "image": "assets/anime/2.jpg",
// // // // //       "rating": "8.7",
// // // // //       "year": "2019",
// // // // //       "genre": "Adventure",
// // // // //     },
// // // // //     {
// // // // //       "title": "One Piece",
// // // // //       "image": "assets/anime/3.jpg",
// // // // //       "rating": "8.8",
// // // // //       "year": "1999",
// // // // //       "genre": "Adventure",
// // // // //     },
// // // // //     {
// // // // //       "title": "Naruto",
// // // // //       "image": "assets/anime/4.jpg",
// // // // //       "rating": "8.4",
// // // // //       "year": "2002",
// // // // //       "genre": "Action",
// // // // //     },
// // // // //     {
// // // // //       "title": "Jujutsu Kaisen",
// // // // //       "image": "assets/anime/5.jpg",
// // // // //       "rating": "8.6",
// // // // //       "year": "2020",
// // // // //       "genre": "Supernatural",
// // // // //     },

// // // // //     {
// // // // //       "title": "Attack on Titan",
// // // // //       "image": "assets/anime/1.jpg",
// // // // //       "rating": "9.0",
// // // // //       "year": "2013",
// // // // //       "genre": "Action",
// // // // //     },
// // // // //     {
// // // // //       "title": "Demon Slayer",
// // // // //       "image": "assets/anime/2.jpg",
// // // // //       "rating": "8.7",
// // // // //       "year": "2019",
// // // // //       "genre": "Adventure",
// // // // //     },
// // // // //     {
// // // // //       "title": "One Piece",
// // // // //       "image": "assets/anime/3.jpg",
// // // // //       "rating": "8.8",
// // // // //       "year": "1999",
// // // // //       "genre": "Adventure",
// // // // //     },
// // // // //     {
// // // // //       "title": "Naruto",
// // // // //       "image": "assets/anime/4.jpg",
// // // // //       "rating": "8.4",
// // // // //       "year": "2002",
// // // // //       "genre": "Action",
// // // // //     },
// // // // //     {
// // // // //       "title": "Jujutsu Kaisen",
// // // // //       "image": "assets/anime/5.jpg",
// // // // //       "rating": "8.6",
// // // // //       "year": "2020",
// // // // //       "genre": "Supernatural",
// // // // //     },
// // // // //   ];

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _filteredAnimes = allAnimes;
// // // // //     _animationController = AnimationController(
// // // // //       duration: Duration(milliseconds: 300),
// // // // //       vsync: this,
// // // // //     );
// // // // //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// // // // //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// // // // //     );
// // // // //     _animationController.forward();
// // // // //     _startAutoScroll();
// // // // //   }

// // // // //   void _startAutoScroll() {
// // // // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // // // //       if (!_isSearching && _pageController.hasClients) {
// // // // //         if (_currentPage < 7) {
// // // // //           _currentPage++;
// // // // //         } else {
// // // // //           _currentPage = 0;
// // // // //         }
// // // // //         _pageController.animateToPage(
// // // // //           _currentPage,
// // // // //           duration: Duration(milliseconds: 800),
// // // // //           curve: Curves.easeInOutCubic,
// // // // //         );
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   void _searchAnimes(String query) {
// // // // //     setState(() {
// // // // //       if (query.isEmpty) {
// // // // //         _filteredAnimes = allAnimes;
// // // // //         _isSearching = false;
// // // // //       } else {
// // // // //         _filteredAnimes = allAnimes
// // // // //             .where(
// // // // //               (anime) =>
// // // // //                   anime['title']!.toLowerCase().contains(query.toLowerCase()),
// // // // //             )
// // // // //             .toList();
// // // // //         _isSearching = true;
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   void _toggleSearch() {
// // // // //     setState(() {
// // // // //       _showSearchBar = !_showSearchBar;
// // // // //       if (!_showSearchBar) {
// // // // //         _searchController.clear();
// // // // //         _searchAnimes('');
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _timer?.cancel();
// // // // //     _pageController.dispose();
// // // // //     _searchController.dispose();
// // // // //     _animationController.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   Widget _buildFeaturedAnimesCarousel() {
// // // // //     List<Map<String, String>> featuredAnimes = allAnimes.take(8).toList();

// // // // //     return Container(
// // // // //       height: 280,
// // // // //       margin: EdgeInsets.symmetric(vertical: 20),
// // // // //       child: Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //         children: [
// // // // //           Padding(
// // // // //             padding: EdgeInsets.symmetric(horizontal: 20),
// // // // //             child: Row(
// // // // //               children: [
// // // // //                 Container(
// // // // //                   width: 4,
// // // // //                   height: 25,
// // // // //                   decoration: BoxDecoration(
// // // // //                     gradient: LinearGradient(
// // // // //                       colors: [Colors.pinkAccent, Colors.purpleAccent],
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                     ),
// // // // //                     borderRadius: BorderRadius.circular(2),
// // // // //                   ),
// // // // //                 ),
// // // // //                 SizedBox(width: 10),
// // // // //                 Text(
// // // // //                   'أبرز الأنميات',
// // // // //                   style: TextStyle(
// // // // //                     fontSize: 24,
// // // // //                     fontWeight: FontWeight.bold,
// // // // //                     color: Colors.white,
// // // // //                     shadows: [
// // // // //                       Shadow(
// // // // //                         offset: Offset(2, 2),
// // // // //                         blurRadius: 4,
// // // // //                         color: Colors.black.withOpacity(0.5),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: 15),
// // // // //           Expanded(
// // // // //             child: PageView.builder(
// // // // //               controller: _pageController,
// // // // //               itemCount: featuredAnimes.length,
// // // // //               onPageChanged: (index) {
// // // // //                 setState(() {
// // // // //                   _currentPage = index;
// // // // //                 });
// // // // //               },
// // // // //               itemBuilder: (context, index) {
// // // // //                 final anime = featuredAnimes[index];
// // // // //                 return GestureDetector(
// // // // //                   onTap: () {
// // // // //                     Navigator.push(
// // // // //                       context,
// // // // //                       MaterialPageRoute(
// // // // //                         builder: (context) => SeriesDetailsPage(
// // // // //                           title: anime["title"]!,
// // // // //                           image: anime["image"]!,
// // // // //                           rating: anime["rating"]!,
// // // // //                           year: anime["year"]!,
// // // // //                           genre: anime["genre"]!,
// // // // //                         ),
// // // // //                       ),
// // // // //                     );
// // // // //                   },
// // // // //                   child: Container(
// // // // //                     margin: EdgeInsets.symmetric(horizontal: 15),
// // // // //                     child: Stack(
// // // // //                       children: [
// // // // //                         ClipRRect(
// // // // //                           borderRadius: BorderRadius.circular(20),
// // // // //                           child: Container(
// // // // //                             width: double.infinity,
// // // // //                             decoration: BoxDecoration(
// // // // //                               boxShadow: [
// // // // //                                 BoxShadow(
// // // // //                                   color: Colors.black.withOpacity(0.4),
// // // // //                                   spreadRadius: 3,
// // // // //                                   blurRadius: 15,
// // // // //                                   offset: Offset(0, 8),
// // // // //                                 ),
// // // // //                               ],
// // // // //                             ),
// // // // //                             child: Image.asset(
// // // // //                               featuredAnimes[index]['image']!,
// // // // //                               fit: BoxFit.cover,
// // // // //                               errorBuilder: (context, error, stackTrace) {
// // // // //                                 return Container(
// // // // //                                   decoration: BoxDecoration(
// // // // //                                     gradient: LinearGradient(
// // // // //                                       colors: [
// // // // //                                         Colors.grey[800]!,
// // // // //                                         Colors.grey[900]!,
// // // // //                                       ],
// // // // //                                       begin: Alignment.topLeft,
// // // // //                                       end: Alignment.bottomRight,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   child: Center(
// // // // //                                     child: Icon(
// // // // //                                       Icons.movie_creation_outlined,
// // // // //                                       size: 60,
// // // // //                                       color: Colors.white54,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                 );
// // // // //                               },
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                         Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             borderRadius: BorderRadius.circular(20),
// // // // //                             gradient: LinearGradient(
// // // // //                               begin: Alignment.topCenter,
// // // // //                               end: Alignment.bottomCenter,
// // // // //                               colors: [
// // // // //                                 Colors.transparent,
// // // // //                                 Colors.transparent,
// // // // //                                 Colors.black.withOpacity(0.9),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                         Positioned(
// // // // //                           bottom: 20,
// // // // //                           left: 20,
// // // // //                           right: 20,
// // // // //                           child: Column(
// // // // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                             children: [
// // // // //                               Text(
// // // // //                                 featuredAnimes[index]['title']!,
// // // // //                                 style: TextStyle(
// // // // //                                   fontSize: 22,
// // // // //                                   fontWeight: FontWeight.bold,
// // // // //                                   color: Colors.white,
// // // // //                                   shadows: [
// // // // //                                     Shadow(
// // // // //                                       offset: Offset(1, 1),
// // // // //                                       blurRadius: 3,
// // // // //                                       color: Colors.black,
// // // // //                                     ),
// // // // //                                   ],
// // // // //                                 ),
// // // // //                               ),
// // // // //                               SizedBox(height: 8),
// // // // //                               Row(
// // // // //                                 children: [
// // // // //                                   Container(
// // // // //                                     padding: EdgeInsets.symmetric(
// // // // //                                       horizontal: 8,
// // // // //                                       vertical: 4,
// // // // //                                     ),
// // // // //                                     decoration: BoxDecoration(
// // // // //                                       color: Colors.pinkAccent,
// // // // //                                       borderRadius: BorderRadius.circular(12),
// // // // //                                     ),
// // // // //                                     child: Row(
// // // // //                                       mainAxisSize: MainAxisSize.min,
// // // // //                                       children: [
// // // // //                                         Icon(
// // // // //                                           Icons.star,
// // // // //                                           color: Colors.white,
// // // // //                                           size: 16,
// // // // //                                         ),
// // // // //                                         SizedBox(width: 4),
// // // // //                                         Text(
// // // // //                                           featuredAnimes[index]['rating'] ??
// // // // //                                               '8.0',
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.white,
// // // // //                                             fontWeight: FontWeight.bold,
// // // // //                                             fontSize: 12,
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                       ],
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   SizedBox(width: 10),
// // // // //                                   Text(
// // // // //                                     featuredAnimes[index]['year'] ?? '2024',
// // // // //                                     style: TextStyle(
// // // // //                                       color: Colors.white70,
// // // // //                                       fontSize: 14,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   Spacer(),
// // // // //                                   Container(
// // // // //                                     padding: EdgeInsets.all(8),
// // // // //                                     decoration: BoxDecoration(
// // // // //                                       color: Colors.purpleAccent.withOpacity(
// // // // //                                         0.8,
// // // // //                                       ),
// // // // //                                       shape: BoxShape.circle,
// // // // //                                     ),
// // // // //                                     child: Icon(
// // // // //                                       Icons.play_arrow,
// // // // //                                       color: Colors.white,
// // // // //                                       size: 20,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: 15),
// // // // //           Row(
// // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // //             children: List.generate(
// // // // //               featuredAnimes.length,
// // // // //               (index) => AnimatedContainer(
// // // // //                 duration: Duration(milliseconds: 300),
// // // // //                 margin: EdgeInsets.symmetric(horizontal: 4),
// // // // //                 width: _currentPage == index ? 30 : 10,
// // // // //                 height: 6,
// // // // //                 decoration: BoxDecoration(
// // // // //                   gradient: _currentPage == index
// // // // //                       ? LinearGradient(
// // // // //                           colors: [Colors.pinkAccent, Colors.purpleAccent],
// // // // //                         )
// // // // //                       : null,
// // // // //                   color: _currentPage == index ? null : Colors.white38,
// // // // //                   borderRadius: BorderRadius.circular(3),
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildAnimeCard(Map<String, String> anime, int index) {
// // // // //     return GestureDetector(
// // // // //       onTap: () {
// // // // //         Navigator.push(
// // // // //           context,
// // // // //           MaterialPageRoute(
// // // // //             builder: (context) => SeriesDetailsPage(
// // // // //               title: anime["title"]!,
// // // // //               image: anime["image"]!,
// // // // //               rating: anime["rating"]!,
// // // // //               year: anime["year"]!,
// // // // //               genre: anime["genre"]!,
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //       child: AnimatedContainer(
// // // // //         duration: Duration(milliseconds: 300 + (index * 50)),
// // // // //         child: Container(
// // // // //           decoration: BoxDecoration(
// // // // //             borderRadius: BorderRadius.circular(18),
// // // // //             boxShadow: [
// // // // //               BoxShadow(
// // // // //                 color: Colors.black.withOpacity(0.3),
// // // // //                 spreadRadius: 2,
// // // // //                 blurRadius: 12,
// // // // //                 offset: Offset(0, 6),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //           child: ClipRRect(
// // // // //             borderRadius: BorderRadius.circular(18),
// // // // //             child: Stack(
// // // // //               children: [
// // // // //                 Container(
// // // // //                   width: double.infinity,
// // // // //                   height: double.infinity,
// // // // //                   child: Image.asset(
// // // // //                     anime['image']!,
// // // // //                     fit: BoxFit.cover,
// // // // //                     errorBuilder: (context, error, stackTrace) {
// // // // //                       return Container(
// // // // //                         decoration: BoxDecoration(
// // // // //                           gradient: LinearGradient(
// // // // //                             colors: [Colors.grey[800]!, Colors.grey[900]!],
// // // // //                             begin: Alignment.topLeft,
// // // // //                             end: Alignment.bottomRight,
// // // // //                           ),
// // // // //                         ),
// // // // //                         child: Center(
// // // // //                           child: Icon(
// // // // //                             Icons.movie_creation_outlined,
// // // // //                             size: 40,
// // // // //                             color: Colors.white54,
// // // // //                           ),
// // // // //                         ),
// // // // //                       );
// // // // //                     },
// // // // //                   ),
// // // // //                 ),
// // // // //                 Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     gradient: LinearGradient(
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                       colors: [
// // // // //                         Colors.transparent,
// // // // //                         Colors.transparent,
// // // // //                         Colors.black.withOpacity(0.8),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 Positioned(
// // // // //                   top: 8,
// // // // //                   right: 8,
// // // // //                   child: Container(
// // // // //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.pinkAccent,
// // // // //                       borderRadius: BorderRadius.circular(8),
// // // // //                     ),
// // // // //                     child: Row(
// // // // //                       mainAxisSize: MainAxisSize.min,
// // // // //                       children: [
// // // // //                         Icon(Icons.star, color: Colors.white, size: 12),
// // // // //                         SizedBox(width: 2),
// // // // //                         Text(
// // // // //                           anime['rating'] ?? '8.0',
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.white,
// // // // //                             fontWeight: FontWeight.bold,
// // // // //                             fontSize: 10,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 Positioned(
// // // // //                   bottom: 8,
// // // // //                   left: 8,
// // // // //                   right: 8,
// // // // //                   child: Text(
// // // // //                     anime['title']!,
// // // // //                     style: TextStyle(
// // // // //                       fontSize: 13,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       color: Colors.white,
// // // // //                       shadows: [
// // // // //                         Shadow(
// // // // //                           offset: Offset(1, 1),
// // // // //                           blurRadius: 2,
// // // // //                           color: Colors.black,
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                     textAlign: TextAlign.center,
// // // // //                     maxLines: 2,
// // // // //                     overflow: TextOverflow.ellipsis,
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         backgroundColor: Colors.purple[900],
// // // // //         elevation: 0,
// // // // //         title: Text(
// // // // //           'مكتبة الأنمي',
// // // // //           style: TextStyle(
// // // // //             fontSize: 24,
// // // // //             fontWeight: FontWeight.bold,
// // // // //             color: Colors.white,
// // // // //           ),
// // // // //         ),
// // // // //         centerTitle: true,
// // // // //         actions: [
// // // // //           IconButton(
// // // // //             onPressed: _toggleSearch,
// // // // //             icon: Icon(
// // // // //               _showSearchBar ? Icons.close : Icons.search,
// // // // //               color: Colors.white,
// // // // //               size: 28,
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(width: 10),
// // // // //         ],
// // // // //       ),
// // // // //       body: Container(
// // // // //         decoration: BoxDecoration(
// // // // //           gradient: LinearGradient(
// // // // //             begin: Alignment.topCenter,
// // // // //             end: Alignment.bottomCenter,
// // // // //             colors: [Colors.purple[900]!, Colors.indigo[900]!, Colors.black],
// // // // //           ),
// // // // //         ),
// // // // //         child: FadeTransition(
// // // // //           opacity: _fadeAnimation,
// // // // //           child: CustomScrollView(
// // // // //             slivers: [
// // // // //               if (_showSearchBar)
// // // // //                 SliverToBoxAdapter(
// // // // //                   child: Container(
// // // // //                     padding: EdgeInsets.all(20),
// // // // //                     child: Container(
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.white.withOpacity(0.1),
// // // // //                         borderRadius: BorderRadius.circular(25),
// // // // //                         border: Border.all(
// // // // //                           color: Colors.white.withOpacity(0.2),
// // // // //                           width: 1,
// // // // //                         ),
// // // // //                       ),
// // // // //                       child: TextField(
// // // // //                         controller: _searchController,
// // // // //                         onChanged: _searchAnimes,
// // // // //                         style: TextStyle(color: Colors.white),
// // // // //                         autofocus: true,
// // // // //                         decoration: InputDecoration(
// // // // //                           hintText: 'ابحث عن أنمي...',
// // // // //                           hintStyle: TextStyle(color: Colors.white60),
// // // // //                           prefixIcon: Icon(Icons.search, color: Colors.white70),
// // // // //                           border: InputBorder.none,
// // // // //                           contentPadding: EdgeInsets.symmetric(
// // // // //                             horizontal: 20,
// // // // //                             vertical: 15,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),

// // // // //               if (!_isSearching)
// // // // //                 SliverToBoxAdapter(child: _buildFeaturedAnimesCarousel()),

// // // // //               SliverToBoxAdapter(
// // // // //                 child: Padding(
// // // // //                   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// // // // //                   child: Row(
// // // // //                     children: [
// // // // //                       Container(
// // // // //                         width: 4,
// // // // //                         height: 25,
// // // // //                         decoration: BoxDecoration(
// // // // //                           gradient: LinearGradient(
// // // // //                             colors: [Colors.pinkAccent, Colors.purpleAccent],
// // // // //                             begin: Alignment.topCenter,
// // // // //                             end: Alignment.bottomCenter,
// // // // //                           ),
// // // // //                           borderRadius: BorderRadius.circular(2),
// // // // //                         ),
// // // // //                       ),
// // // // //                       SizedBox(width: 10),
// // // // //                       Text(
// // // // //                         _isSearching ? 'نتائج البحث' : 'جميع الأنميات',
// // // // //                         style: TextStyle(
// // // // //                           fontSize: 24,
// // // // //                           fontWeight: FontWeight.bold,
// // // // //                           color: Colors.white,
// // // // //                           shadows: [
// // // // //                             Shadow(
// // // // //                               offset: Offset(2, 2),
// // // // //                               blurRadius: 4,
// // // // //                               color: Colors.black.withOpacity(0.5),
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ),

// // // // //               SliverPadding(
// // // // //                 padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
// // // // //                 sliver: SliverGrid(
// // // // //                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // // //                     crossAxisCount: 3,
// // // // //                     childAspectRatio: 0.65,
// // // // //                     crossAxisSpacing: 12,
// // // // //                     mainAxisSpacing: 15,
// // // // //                   ),
// // // // //                   delegate: SliverChildBuilderDelegate((context, index) {
// // // // //                     return _buildAnimeCard(_filteredAnimes[index], index);
// // // // //                   }, childCount: _filteredAnimes.length),
// // // // //                 ),
// // // // //               ),

// // // // //               SliverToBoxAdapter(child: SizedBox(height: 30)),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';
// // // // // import 'dart:async';
// // // // // import 'dart:convert'; // For JSON decoding
// // // // // import 'package:http/http.dart' as http; // For making HTTP requests
// // // // // import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore

// // // // // import 'package:korrrrrrrr/serias_screens/series_detiels.dart'; // Reusing SeriesDetailsPage for anime details

// // // // // // Define an Anime model to better handle data from Jikan API
// // // // // class Anime {
// // // // //   final String malId;
// // // // //   final String title;
// // // // //   final String imageUrl;
// // // // //   final String score;
// // // // //   final String airedYear;
// // // // //   final int episodes;
// // // // //   final String synopsis;
// // // // //   final String genre; // Taking the first genre for simplicity
// // // // //   String? videoLink; // Nullable video link from Firebase

// // // // //   Anime({
// // // // //     required this.malId,
// // // // //     required this.title,
// // // // //     required this.imageUrl,
// // // // //     required this.score,
// // // // //     required this.airedYear,
// // // // //     required this.episodes,
// // // // //     required this.synopsis,
// // // // //     required this.genre,
// // // // //     this.videoLink,
// // // // //   });

// // // // //   // Factory constructor to create an Anime from Jikan API response
// // // // //   factory Anime.fromJson(Map<String, dynamic> json) {
// // // // //     final images = json['images']?['jpg'];
// // // // //     final aired = json['aired'];
// // // // //     final genres = json['genres'] as List?;

// // // // //     return Anime(
// // // // //       malId: json['mal_id'].toString(),
// // // // //       title: json['title_english'] ?? json['title'] ?? 'N/A',
// // // // //       imageUrl: images?['large_image_url'] ?? images?['image_url'] ?? '',
// // // // //       score: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// // // // //       airedYear:
// // // // //           (aired?['prop']?['from']?['year'] as int?)?.toString() ?? 'N/A',
// // // // //       episodes: json['episodes'] as int? ?? 0,
// // // // //       synopsis: json['synopsis'] ?? 'No synopsis available.',
// // // // //       genre: genres != null && genres.isNotEmpty
// // // // //           ? genres[0]['name'] ?? 'N/A'
// // // // //           : 'N/A',
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class AnimePage extends StatefulWidget {
// // // // //   @override
// // // // //   _AnimePageState createState() => _AnimePageState();
// // // // // }

// // // // // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// // // // //   PageController _pageController = PageController();
// // // // //   TextEditingController _searchController = TextEditingController();
// // // // //   Timer? _timer;
// // // // //   int _currentPage = 0;
// // // // //   bool _isSearching = false;
// // // // //   bool _showSearchBar = false;

// // // // //   List<Anime> _allAnime = []; // Stores all fetched anime
// // // // //   List<Anime> _filteredAnime = []; // Stores anime after search filter

// // // // //   late Future<List<Anime>> _animeFuture; // Future for fetching anime
// // // // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// // // // //   late AnimationController _animationController;
// // // // //   late Animation<double> _fadeAnimation;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _animationController = AnimationController(
// // // // //       duration: Duration(milliseconds: 300),
// // // // //       vsync: this,
// // // // //     );
// // // // //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// // // // //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// // // // //     );
// // // // //     _animationController.forward();

// // // // //     _animeFuture = _fetchAndProcessAnime();
// // // // //     _startAutoScroll();
// // // // //   }

// // // // //   Future<List<Anime>> _fetchAndProcessAnime() async {
// // // // //     final response = await http.get(
// // // // //       Uri.parse('https://api.jikan.moe/v4/top/anime'),
// // // // //     );

// // // // //     if (response.statusCode == 200) {
// // // // //       final jsonData = json.decode(response.body);
// // // // //       List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
// // // // //         jsonData['data'],
// // // // //       ).map((json) => Anime.fromJson(json)).toList();

// // // // //       // Fetch video links from Firebase for each anime
// // // // //       for (var anime in fetchedAnime) {
// // // // //         anime.videoLink = await _getVideoLink(anime.malId);
// // // // //       }

// // // // //       setState(() {
// // // // //         _allAnime = fetchedAnime;
// // // // //         _filteredAnime = _allAnime; // Initialize filtered list with all anime
// // // // //       });
// // // // //       return fetchedAnime;
// // // // //     } else {
// // // // //       throw Exception('Failed to load anime from Jikan API');
// // // // //     }
// // // // //   }

// // // // //   Future<void> _addLink(String animeId, String link) async {
// // // // //     // Using a new collection 'anime_links'
// // // // //     await _firestore.collection("anime_links").doc(animeId).set({
// // // // //       'link': link,
// // // // //     }, SetOptions(merge: true));

// // // // //     // Update the specific anime's link in the local list and trigger rebuild
// // // // //     setState(() {
// // // // //       final index = _allAnime.indexWhere((anime) => anime.malId == animeId);
// // // // //       if (index != -1) {
// // // // //         _allAnime[index].videoLink = link;
// // // // //         // Re-apply filter to update _filteredAnime if searching
// // // // //         _searchAnime(_searchController.text);
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   Future<String?> _getVideoLink(String id) async {
// // // // //     final doc = await _firestore.collection('anime_links').doc(id).get();
// // // // //     return (doc.exists && doc.data()?['link'] != null)
// // // // //         ? doc.data()!['link'] as String
// // // // //         : null;
// // // // //   }

// // // // //   void _showAddLinkDialog(String animeId) {
// // // // //     final TextEditingController _controller = TextEditingController();
// // // // //     showDialog(
// // // // //       context: context,
// // // // //       builder: (context) => AlertDialog(
// // // // //         title: const Text('إضافة رابط مشاهدة'),
// // // // //         content: TextField(
// // // // //           controller: _controller,
// // // // //           decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
// // // // //         ),
// // // // //         actions: [
// // // // //           TextButton(
// // // // //             onPressed: () {
// // // // //               Navigator.pop(context);
// // // // //             },
// // // // //             child: const Text('إلغاء'),
// // // // //           ),
// // // // //           ElevatedButton(
// // // // //             onPressed: () {
// // // // //               _addLink(animeId, _controller.text);
// // // // //               Navigator.pop(context);
// // // // //             },
// // // // //             child: const Text('حفظ'),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   void _startAutoScroll() {
// // // // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // // // //       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
// // // // //         // Ensure there are enough anime for the carousel (at least 8 for your current logic)
// // // // //         if (_currentPage < (_allAnime.take(8).length - 1)) {
// // // // //           _currentPage++;
// // // // //         } else {
// // // // //           _currentPage = 0;
// // // // //         }
// // // // //         _pageController.animateToPage(
// // // // //           _currentPage,
// // // // //           duration: Duration(milliseconds: 800),
// // // // //           curve: Curves.easeInOutCubic,
// // // // //         );
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   void _searchAnime(String query) {
// // // // //     setState(() {
// // // // //       if (query.isEmpty) {
// // // // //         _filteredAnime = _allAnime;
// // // // //         _isSearching = false;
// // // // //       } else {
// // // // //         _filteredAnime = _allAnime
// // // // //             .where(
// // // // //               (anime) =>
// // // // //                   anime.title.toLowerCase().contains(query.toLowerCase()),
// // // // //             )
// // // // //             .toList();
// // // // //         _isSearching = true;
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   void _toggleSearch() {
// // // // //     setState(() {
// // // // //       _showSearchBar = !_showSearchBar;
// // // // //       if (!_showSearchBar) {
// // // // //         _searchController.clear();
// // // // //         _searchAnime('');
// // // // //       }
// // // // //     });
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _timer?.cancel();
// // // // //     _pageController.dispose();
// // // // //     _searchController.dispose();
// // // // //     _animationController.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
// // // // //     List<Anime> featuredAnime = animeList
// // // // //         .take(8)
// // // // //         .toList(); // Take first 8 for carousel
// // // // //     if (featuredAnime.isEmpty) {
// // // // //       return SizedBox.shrink(); // Don't show if no anime
// // // // //     }

// // // // //     return Container(
// // // // //       height: 280,
// // // // //       margin: EdgeInsets.symmetric(vertical: 20),
// // // // //       child: Column(
// // // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // // //         children: [
// // // // //           Padding(
// // // // //             padding: EdgeInsets.symmetric(horizontal: 20),
// // // // //             child: Row(
// // // // //               children: [
// // // // //                 Container(
// // // // //                   width: 4,
// // // // //                   height: 25,
// // // // //                   decoration: BoxDecoration(
// // // // //                     gradient: LinearGradient(
// // // // //                       colors: [
// // // // //                         Colors.purple,
// // // // //                         Colors.deepPurple,
// // // // //                       ], // Anime-themed gradient
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                     ),
// // // // //                     borderRadius: BorderRadius.circular(2),
// // // // //                   ),
// // // // //                 ),
// // // // //                 SizedBox(width: 10),
// // // // //                 Text(
// // // // //                   'الأنمي المميز',
// // // // //                   style: TextStyle(
// // // // //                     fontSize: 24,
// // // // //                     fontWeight: FontWeight.bold,
// // // // //                     color: Colors.white,
// // // // //                     shadows: [
// // // // //                       Shadow(
// // // // //                         offset: Offset(2, 2),
// // // // //                         blurRadius: 4,
// // // // //                         color: Colors.black.withOpacity(0.5),
// // // // //                       ),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: 15),
// // // // //           Expanded(
// // // // //             child: PageView.builder(
// // // // //               controller: _pageController,
// // // // //               itemCount: featuredAnime.length,
// // // // //               onPageChanged: (index) {
// // // // //                 setState(() {
// // // // //                   _currentPage = index;
// // // // //                 });
// // // // //               },
// // // // //               itemBuilder: (context, index) {
// // // // //                 final anime = featuredAnime[index];
// // // // //                 return GestureDetector(
// // // // //                   onTap: () {
// // // // //                     Navigator.push(
// // // // //                       context,
// // // // //                       MaterialPageRoute(
// // // // //                         builder: (context) => SeriesDetailsPage(
// // // // //                           title: anime.title,
// // // // //                           image: anime.imageUrl,
// // // // //                           rating: anime.score,
// // // // //                           year: anime.airedYear,
// // // // //                           seasons:
// // // // //                               '${anime.episodes} حلقة', // Map episodes to seasons
// // // // //                           genre: anime.genre,
// // // // //                           videoLink: anime.videoLink, // Pass the video link
// // // // //                         ),
// // // // //                       ),
// // // // //                     );
// // // // //                   },
// // // // //                   child: Container(
// // // // //                     margin: EdgeInsets.symmetric(horizontal: 15),
// // // // //                     child: Stack(
// // // // //                       children: [
// // // // //                         ClipRRect(
// // // // //                           borderRadius: BorderRadius.circular(20),
// // // // //                           child: Container(
// // // // //                             width: double.infinity,
// // // // //                             decoration: BoxDecoration(
// // // // //                               boxShadow: [
// // // // //                                 BoxShadow(
// // // // //                                   color: Colors.black.withOpacity(0.4),
// // // // //                                   spreadRadius: 3,
// // // // //                                   blurRadius: 15,
// // // // //                                   offset: Offset(0, 8),
// // // // //                                 ),
// // // // //                               ],
// // // // //                             ),
// // // // //                             child: anime.imageUrl.isNotEmpty
// // // // //                                 ? Image.network(
// // // // //                                     anime.imageUrl,
// // // // //                                     fit: BoxFit.cover,
// // // // //                                     errorBuilder: (context, error, stackTrace) {
// // // // //                                       return Container(
// // // // //                                         decoration: BoxDecoration(
// // // // //                                           gradient: LinearGradient(
// // // // //                                             colors: [
// // // // //                                               Colors.grey[800]!,
// // // // //                                               Colors.grey[900]!,
// // // // //                                             ],
// // // // //                                             begin: Alignment.topLeft,
// // // // //                                             end: Alignment.bottomRight,
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                         child: Center(
// // // // //                                           child: Icon(
// // // // //                                             Icons.image_not_supported_outlined,
// // // // //                                             size: 60,
// // // // //                                             color: Colors.white54,
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                       );
// // // // //                                     },
// // // // //                                   )
// // // // //                                 : Container(
// // // // //                                     decoration: BoxDecoration(
// // // // //                                       gradient: LinearGradient(
// // // // //                                         colors: [
// // // // //                                           Colors.grey[800]!,
// // // // //                                           Colors.grey[900]!,
// // // // //                                         ],
// // // // //                                         begin: Alignment.topLeft,
// // // // //                                         end: Alignment.bottomRight,
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                     child: Center(
// // // // //                                       child: Icon(
// // // // //                                         Icons.image_not_supported_outlined,
// // // // //                                         size: 60,
// // // // //                                         color: Colors.white54,
// // // // //                                       ),
// // // // //                                     ),
// // // // //                                   ),
// // // // //                           ),
// // // // //                         ),
// // // // //                         Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             borderRadius: BorderRadius.circular(20),
// // // // //                             gradient: LinearGradient(
// // // // //                               begin: Alignment.topCenter,
// // // // //                               end: Alignment.bottomCenter,
// // // // //                               colors: [
// // // // //                                 Colors.transparent,
// // // // //                                 Colors.transparent,
// // // // //                                 Colors.black.withOpacity(0.9),
// // // // //                               ],
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                         Positioned(
// // // // //                           bottom: 20,
// // // // //                           left: 20,
// // // // //                           right: 20,
// // // // //                           child: Column(
// // // // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // // // //                             children: [
// // // // //                               Text(
// // // // //                                 anime.title,
// // // // //                                 style: TextStyle(
// // // // //                                   fontSize: 22,
// // // // //                                   fontWeight: FontWeight.bold,
// // // // //                                   color: Colors.white,
// // // // //                                   shadows: [
// // // // //                                     Shadow(
// // // // //                                       offset: Offset(1, 1),
// // // // //                                       blurRadius: 3,
// // // // //                                       color: Colors.black,
// // // // //                                     ),
// // // // //                                   ],
// // // // //                                 ),
// // // // //                                 maxLines: 2,
// // // // //                                 overflow: TextOverflow.ellipsis,
// // // // //                               ),
// // // // //                               SizedBox(height: 8),
// // // // //                               Row(
// // // // //                                 children: [
// // // // //                                   Container(
// // // // //                                     padding: EdgeInsets.symmetric(
// // // // //                                       horizontal: 8,
// // // // //                                       vertical: 4,
// // // // //                                     ),
// // // // //                                     decoration: BoxDecoration(
// // // // //                                       color: Colors
// // // // //                                           .purpleAccent, // Anime-themed color
// // // // //                                       borderRadius: BorderRadius.circular(12),
// // // // //                                     ),
// // // // //                                     child: Row(
// // // // //                                       mainAxisSize: MainAxisSize.min,
// // // // //                                       children: [
// // // // //                                         Icon(
// // // // //                                           Icons.star,
// // // // //                                           color: Colors.black,
// // // // //                                           size: 16,
// // // // //                                         ),
// // // // //                                         SizedBox(width: 4),
// // // // //                                         Text(
// // // // //                                           anime.score,
// // // // //                                           style: TextStyle(
// // // // //                                             color: Colors.black,
// // // // //                                             fontWeight: FontWeight.bold,
// // // // //                                             fontSize: 12,
// // // // //                                           ),
// // // // //                                         ),
// // // // //                                       ],
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   SizedBox(width: 10),
// // // // //                                   Text(
// // // // //                                     anime.airedYear,
// // // // //                                     style: TextStyle(
// // // // //                                       color: Colors.white70,
// // // // //                                       fontSize: 14,
// // // // //                                     ),
// // // // //                                   ),
// // // // //                                   Spacer(),
// // // // //                                   // Link status icon for carousel items
// // // // //                                   Container(
// // // // //                                     padding: const EdgeInsets.all(8),
// // // // //                                     decoration: BoxDecoration(
// // // // //                                       color: Colors.black.withOpacity(0.7),
// // // // //                                       shape: BoxShape.circle,
// // // // //                                     ),
// // // // //                                     child:
// // // // //                                         anime.videoLink != null &&
// // // // //                                             anime.videoLink!.isNotEmpty
// // // // //                                         ? const Icon(
// // // // //                                             Icons.check_circle,
// // // // //                                             color: Colors.green,
// // // // //                                             size: 20,
// // // // //                                           )
// // // // //                                         : const Icon(
// // // // //                                             Icons.link_off,
// // // // //                                             color: Colors.red,
// // // // //                                             size: 20,
// // // // //                                           ),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ],
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 );
// // // // //               },
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(height: 15),
// // // // //           Row(
// // // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // // //             children: List.generate(
// // // // //               featuredAnime.length,
// // // // //               (index) => AnimatedContainer(
// // // // //                 duration: Duration(milliseconds: 300),
// // // // //                 margin: EdgeInsets.symmetric(horizontal: 4),
// // // // //                 width: _currentPage == index ? 30 : 10,
// // // // //                 height: 6,
// // // // //                 decoration: BoxDecoration(
// // // // //                   gradient: _currentPage == index
// // // // //                       ? LinearGradient(
// // // // //                           colors: [Colors.purple, Colors.deepPurple],
// // // // //                         )
// // // // //                       : null,
// // // // //                   color: _currentPage == index ? null : Colors.white38,
// // // // //                   borderRadius: BorderRadius.circular(3),
// // // // //                 ),
// // // // //               ),
// // // // //             ),
// // // // //           ),
// // // // //         ],
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildAnimeCard(Anime anime, int index) {
// // // // //     return GestureDetector(
// // // // //       onTap: () {
// // // // //         Navigator.push(
// // // // //           context,
// // // // //           MaterialPageRoute(
// // // // //             builder: (context) => SeriesDetailsPage(
// // // // //               title: anime.title,
// // // // //               image: anime.imageUrl,
// // // // //               rating: anime.score,
// // // // //               year: anime.airedYear,
// // // // //               seasons: '${anime.episodes} حلقة', // Map episodes to seasons
// // // // //               genre: anime.genre,
// // // // //               videoLink: anime.videoLink, // Pass the video link
// // // // //             ),
// // // // //           ),
// // // // //         );
// // // // //       },
// // // // //       child: AnimatedContainer(
// // // // //         duration: Duration(milliseconds: 300 + (index * 50)),
// // // // //         child: Container(
// // // // //           decoration: BoxDecoration(
// // // // //             borderRadius: BorderRadius.circular(18),
// // // // //             boxShadow: [
// // // // //               BoxShadow(
// // // // //                 color: Colors.black.withOpacity(0.3),
// // // // //                 spreadRadius: 2,
// // // // //                 blurRadius: 12,
// // // // //                 offset: Offset(0, 6),
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //           child: ClipRRect(
// // // // //             borderRadius: BorderRadius.circular(18),
// // // // //             child: Stack(
// // // // //               children: [
// // // // //                 Container(
// // // // //                   width: double.infinity,
// // // // //                   height: double.infinity,
// // // // //                   child: anime.imageUrl.isNotEmpty
// // // // //                       ? Image.network(
// // // // //                           anime.imageUrl,
// // // // //                           fit: BoxFit.cover,
// // // // //                           errorBuilder: (context, error, stackTrace) {
// // // // //                             return Container(
// // // // //                               decoration: BoxDecoration(
// // // // //                                 gradient: LinearGradient(
// // // // //                                   colors: [
// // // // //                                     Colors.grey[800]!,
// // // // //                                     Colors.grey[900]!,
// // // // //                                   ],
// // // // //                                   begin: Alignment.topLeft,
// // // // //                                   end: Alignment.bottomRight,
// // // // //                                 ),
// // // // //                               ),
// // // // //                               child: Center(
// // // // //                                 child: Icon(
// // // // //                                   Icons.image_not_supported_outlined,
// // // // //                                   size: 40,
// // // // //                                   color: Colors.white54,
// // // // //                                 ),
// // // // //                               ),
// // // // //                             );
// // // // //                           },
// // // // //                         )
// // // // //                       : Container(
// // // // //                           decoration: BoxDecoration(
// // // // //                             gradient: LinearGradient(
// // // // //                               colors: [Colors.grey[800]!, Colors.grey[900]!],
// // // // //                               begin: Alignment.topLeft,
// // // // //                               end: Alignment.bottomRight,
// // // // //                             ),
// // // // //                           ),
// // // // //                           child: Center(
// // // // //                             child: Icon(
// // // // //                               Icons.image_not_supported_outlined,
// // // // //                               size: 40,
// // // // //                               color: Colors.white54,
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                 ),
// // // // //                 Container(
// // // // //                   decoration: BoxDecoration(
// // // // //                     gradient: LinearGradient(
// // // // //                       begin: Alignment.topCenter,
// // // // //                       end: Alignment.bottomCenter,
// // // // //                       colors: [
// // // // //                         Colors.transparent,
// // // // //                         Colors.transparent,
// // // // //                         Colors.black.withOpacity(0.8),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 Positioned(
// // // // //                   top: 8,
// // // // //                   right: 8,
// // // // //                   child: Container(
// // // // //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// // // // //                     decoration: BoxDecoration(
// // // // //                       color: Colors.purpleAccent, // Anime-themed color
// // // // //                       borderRadius: BorderRadius.circular(8),
// // // // //                     ),
// // // // //                     child: Row(
// // // // //                       mainAxisSize: MainAxisSize.min,
// // // // //                       children: [
// // // // //                         Icon(Icons.star, color: Colors.black, size: 12),
// // // // //                         SizedBox(width: 2),
// // // // //                         Text(
// // // // //                           anime.score,
// // // // //                           style: TextStyle(
// // // // //                             color: Colors.black,
// // // // //                             fontWeight: FontWeight.bold,
// // // // //                             fontSize: 10,
// // // // //                           ),
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //                 Positioned(
// // // // //                   bottom: 8,
// // // // //                   left: 8,
// // // // //                   right: 8,
// // // // //                   child: Text(
// // // // //                     anime.title,
// // // // //                     style: TextStyle(
// // // // //                       fontSize: 13,
// // // // //                       fontWeight: FontWeight.bold,
// // // // //                       color: Colors.white,
// // // // //                       shadows: [
// // // // //                         Shadow(
// // // // //                           offset: Offset(1, 1),
// // // // //                           blurRadius: 2,
// // // // //                           color: Colors.black,
// // // // //                         ),
// // // // //                       ],
// // // // //                     ),
// // // // //                     textAlign: TextAlign.center,
// // // // //                     maxLines: 2,
// // // // //                     overflow: TextOverflow.ellipsis,
// // // // //                   ),
// // // // //                 ),
// // // // //                 // Link status icon for grid items
// // // // //                 Positioned(
// // // // //                   bottom: 8,
// // // // //                   right: 8,
// // // // //                   child: GestureDetector(
// // // // //                     onTap: () => _showAddLinkDialog(anime.malId),
// // // // //                     child: Container(
// // // // //                       padding: const EdgeInsets.all(4),
// // // // //                       decoration: BoxDecoration(
// // // // //                         color: Colors.black54,
// // // // //                         borderRadius: BorderRadius.circular(8),
// // // // //                       ),
// // // // //                       child:
// // // // //                           anime.videoLink != null && anime.videoLink!.isNotEmpty
// // // // //                           ? const Icon(
// // // // //                               Icons.check_circle,
// // // // //                               color: Colors.green,
// // // // //                               size: 20,
// // // // //                             )
// // // // //                           : const Icon(
// // // // //                               Icons.link_off,
// // // // //                               color: Colors.red,
// // // // //                               size: 20,
// // // // //                             ),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return Scaffold(
// // // // //       appBar: AppBar(
// // // // //         backgroundColor: Color(0xFF4A148C), // Dark purple for anime theme
// // // // //         elevation: 0,
// // // // //         title: Text(
// // // // //           'مكتبة الأنمي',
// // // // //           style: TextStyle(
// // // // //             fontSize: 24,
// // // // //             fontWeight: FontWeight.bold,
// // // // //             color: Colors.white,
// // // // //           ),
// // // // //         ),
// // // // //         centerTitle: true,
// // // // //         actions: [
// // // // //           IconButton(
// // // // //             onPressed: _toggleSearch,
// // // // //             icon: Icon(
// // // // //               _showSearchBar ? Icons.close : Icons.search,
// // // // //               color: Colors.white,
// // // // //               size: 28,
// // // // //             ),
// // // // //           ),
// // // // //           SizedBox(width: 10),
// // // // //         ],
// // // // //       ),
// // // // //       body: Container(
// // // // //         decoration: BoxDecoration(
// // // // //           gradient: LinearGradient(
// // // // //             begin: Alignment.topCenter,
// // // // //             end: Alignment.bottomCenter,
// // // // //             colors: [
// // // // //               Color(0xFF4A148C),
// // // // //               Color(0xFF6A1B9A),
// // // // //               Color(0xFF880E4F),
// // // // //             ], // Purple gradient
// // // // //           ),
// // // // //         ),
// // // // //         child: FadeTransition(
// // // // //           opacity: _fadeAnimation,
// // // // //           child: FutureBuilder<List<Anime>>(
// // // // //             future: _animeFuture,
// // // // //             builder: (context, snapshot) {
// // // // //               if (snapshot.connectionState == ConnectionState.waiting) {
// // // // //                 return Center(
// // // // //                   child: CircularProgressIndicator(color: Colors.purpleAccent),
// // // // //                 );
// // // // //               } else if (snapshot.hasError) {
// // // // //                 return Center(
// // // // //                   child: Text(
// // // // //                     "Error: ${snapshot.error}",
// // // // //                     style: TextStyle(color: Colors.white),
// // // // //                   ),
// // // // //                 );
// // // // //               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // // //                 return Center(
// // // // //                   child: Text(
// // // // //                     "No anime found.",
// // // // //                     style: TextStyle(color: Colors.white),
// // // // //                   ),
// // // // //                 );
// // // // //               } else {
// // // // //                 return CustomScrollView(
// // // // //                   slivers: [
// // // // //                     if (_showSearchBar)
// // // // //                       SliverToBoxAdapter(
// // // // //                         child: Container(
// // // // //                           padding: EdgeInsets.all(20),
// // // // //                           child: Container(
// // // // //                             decoration: BoxDecoration(
// // // // //                               color: Colors.white.withOpacity(0.1),
// // // // //                               borderRadius: BorderRadius.circular(25),
// // // // //                               border: Border.all(
// // // // //                                 color: Colors.white.withOpacity(0.2),
// // // // //                                 width: 1,
// // // // //                               ),
// // // // //                             ),
// // // // //                             child: TextField(
// // // // //                               controller: _searchController,
// // // // //                               onChanged: _searchAnime,
// // // // //                               style: TextStyle(color: Colors.white),
// // // // //                               autofocus: true,
// // // // //                               decoration: InputDecoration(
// // // // //                                 hintText: 'ابحث عن أنمي...',
// // // // //                                 hintStyle: TextStyle(color: Colors.white60),
// // // // //                                 prefixIcon: Icon(
// // // // //                                   Icons.search,
// // // // //                                   color: Colors.white70,
// // // // //                                 ),
// // // // //                                 border: InputBorder.none,
// // // // //                                 contentPadding: EdgeInsets.symmetric(
// // // // //                                   horizontal: 20,
// // // // //                                   vertical: 15,
// // // // //                                 ),
// // // // //                               ),
// // // // //                             ),
// // // // //                           ),
// // // // //                         ),
// // // // //                       ),
// // // // //                     if (!_isSearching)
// // // // //                       SliverToBoxAdapter(
// // // // //                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
// // // // //                       ),
// // // // //                     SliverToBoxAdapter(
// // // // //                       child: Padding(
// // // // //                         padding: EdgeInsets.symmetric(
// // // // //                           horizontal: 20,
// // // // //                           vertical: 10,
// // // // //                         ),
// // // // //                         child: Row(
// // // // //                           children: [
// // // // //                             Container(
// // // // //                               width: 4,
// // // // //                               height: 25,
// // // // //                               decoration: BoxDecoration(
// // // // //                                 gradient: LinearGradient(
// // // // //                                   colors: [
// // // // //                                     Colors.pink,
// // // // //                                     Colors.redAccent,
// // // // //                                   ], // Anime-themed gradient
// // // // //                                   begin: Alignment.topCenter,
// // // // //                                   end: Alignment.bottomCenter,
// // // // //                                 ),
// // // // //                                 borderRadius: BorderRadius.circular(2),
// // // // //                               ),
// // // // //                             ),
// // // // //                             SizedBox(width: 10),
// // // // //                             Text(
// // // // //                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
// // // // //                               style: TextStyle(
// // // // //                                 fontSize: 24,
// // // // //                                 fontWeight: FontWeight.bold,
// // // // //                                 color: Colors.white,
// // // // //                                 shadows: [
// // // // //                                   Shadow(
// // // // //                                     offset: Offset(2, 2),
// // // // //                                     blurRadius: 4,
// // // // //                                     color: Colors.black.withOpacity(0.5),
// // // // //                                   ),
// // // // //                                 ],
// // // // //                               ),
// // // // //                             ),
// // // // //                           ],
// // // // //                         ),
// // // // //                       ),
// // // // //                     ),
// // // // //                     SliverPadding(
// // // // //                       padding: EdgeInsets.symmetric(
// // // // //                         horizontal: 20,
// // // // //                         vertical: 10,
// // // // //                       ),
// // // // //                       sliver: SliverGrid(
// // // // //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // // //                           crossAxisCount: 3,
// // // // //                           childAspectRatio: 0.65,
// // // // //                           crossAxisSpacing: 12,
// // // // //                           mainAxisSpacing: 15,
// // // // //                         ),
// // // // //                         delegate: SliverChildBuilderDelegate((context, index) {
// // // // //                           return _filteredAnime.isNotEmpty
// // // // //                               ? _buildAnimeCard(_filteredAnime[index], index)
// // // // //                               : Center(
// // // // //                                   child: Text(
// // // // //                                     "No results found.",
// // // // //                                     style: TextStyle(color: Colors.white),
// // // // //                                   ),
// // // // //                                 );
// // // // //                         }, childCount: _filteredAnime.length),
// // // // //                       ),
// // // // //                     ),
// // // // //                     SliverToBoxAdapter(child: SizedBox(height: 30)),
// // // // //                   ],
// // // // //                 );
// // // // //               }
// // // // //             },
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:flutter/material.dart';
// // // // import 'dart:async';
// // // // import 'dart:convert'; // For JSON decoding
// // // // import 'package:http/http.dart' as http; // For making HTTP requests
// // // // import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore
// // // // import 'package:korrrrrrrr/serias_screens/series_detiels.dart'; // Reusing SeriesDetailsPage for anime details

// // // // // Define an Anime model to better handle data from Jikan API
// // // // class Anime {
// // // //   final String malId;
// // // //   final String title;
// // // //   final String imageUrl;
// // // //   final String score;
// // // //   final String airedYear;
// // // //   final int episodes;
// // // //   final String synopsis;
// // // //   final String genre; // Taking the first genre for simplicity
// // // //   String? videoLink; // Nullable video link from Firebase

// // // //   Anime({
// // // //     required this.malId,
// // // //     required this.title,
// // // //     required this.imageUrl,
// // // //     required this.score,
// // // //     required this.airedYear,
// // // //     required this.episodes,
// // // //     required this.synopsis,
// // // //     required this.genre,
// // // //     this.videoLink,
// // // //   });

// // // //   // Factory constructor to create an Anime from Jikan API response
// // // //   factory Anime.fromJson(Map<String, dynamic> json) {
// // // //     final images = json['images']?['jpg'];
// // // //     final aired = json['aired'];
// // // //     final genres = json['genres'] as List?;

// // // //     return Anime(
// // // //       malId: json['mal_id'].toString(),
// // // //       title: json['title_english'] ?? json['title'] ?? 'N/A',
// // // //       imageUrl: images?['large_image_url'] ?? images?['image_url'] ?? '',
// // // //       score: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// // // //       airedYear:
// // // //           (aired?['prop']?['from']?['year'] as int?)?.toString() ?? 'N/A',
// // // //       episodes: json['episodes'] as int? ?? 0,
// // // //       synopsis: json['synopsis'] ?? 'No synopsis available.',
// // // //       genre: genres != null && genres.isNotEmpty
// // // //           ? genres[0]['name'] ?? 'N/A'
// // // //           : 'N/A',
// // // //     );
// // // //   }
// // // // }

// // // // class AnimePage extends StatefulWidget {
// // // //   @override
// // // //   _AnimePageState createState() => _AnimePageState();
// // // // }

// // // // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// // // //   PageController _pageController = PageController();
// // // //   TextEditingController _searchController = TextEditingController();
// // // //   Timer? _timer;
// // // //   int _currentPage = 0;
// // // //   bool _isSearching = false;
// // // //   bool _showSearchBar = false;

// // // //   List<Anime> _allAnime = []; // Stores all fetched anime
// // // //   List<Anime> _filteredAnime = []; // Stores anime after search filter

// // // //   late Future<List<Anime>> _animeFuture; // Future for fetching anime
// // // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

// // // //   late AnimationController _animationController;
// // // //   late Animation<double> _fadeAnimation;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _animationController = AnimationController(
// // // //       duration: Duration(milliseconds: 300),
// // // //       vsync: this,
// // // //     );
// // // //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// // // //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// // // //     );
// // // //     _animationController.forward();

// // // //     _animeFuture = _fetchAndProcessAnime();
// // // //     _startAutoScroll();
// // // //   }

// // // //   Future<List<Anime>> _fetchAndProcessAnime() async {
// // // //     final response = await http.get(
// // // //       Uri.parse('https://api.jikan.moe/v4/top/anime'),
// // // //     );

// // // //     if (response.statusCode == 200) {
// // // //       final jsonData = json.decode(response.body);
// // // //       List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
// // // //         jsonData['data'],
// // // //       ).map((json) => Anime.fromJson(json)).toList();

// // // //       // --- OPTIMIZATION: Fetch all video links from Firebase in one go ---
// // // //       final QuerySnapshot firebaseLinksSnapshot = await _firestore
// // // //           .collection('anime')
// // // //           .get();
// // // //       final Map<String, String> videoLinksMap = {};
// // // //       for (var doc in firebaseLinksSnapshot.docs) {
// // // //         if (doc.data() != null &&
// // // //             (doc.data() as Map<String, dynamic>).containsKey('link')) {
// // // //           videoLinksMap[doc.id] =
// // // //               (doc.data() as Map<String, dynamic>)['link'] as String;
// // // //         }
// // // //       }
// // // //       // --- END OPTIMIZATION ---

// // // //       // Assign video links from the pre-fetched map
// // // //       for (var anime in fetchedAnime) {
// // // //         anime.videoLink = videoLinksMap[anime.malId];
// // // //       }

// // // //       setState(() {
// // // //         _allAnime = fetchedAnime;
// // // //         _filteredAnime = _allAnime; // Initialize filtered list with all anime
// // // //       });
// // // //       return fetchedAnime;
// // // //     } else {
// // // //       throw Exception('Failed to load anime from Jikan API');
// // // //     }
// // // //   }

// // // //   Future<void> _addLink(String animeId, String link) async {
// // // //     // Using collection 'anime_links'
// // // //     await _firestore.collection("anime_links").doc(animeId).set({
// // // //       'link': link,
// // // //     }, SetOptions(merge: true));

// // // //     // Update the specific anime's link in the local list and trigger rebuild
// // // //     setState(() {
// // // //       final index = _allAnime.indexWhere((anime) => anime.malId == animeId);
// // // //       if (index != -1) {
// // // //         _allAnime[index].videoLink = link;
// // // //         // Re-apply filter to update _filteredAnime if searching
// // // //         _searchAnime(_searchController.text);
// // // //       }
// // // //     });
// // // //   }

// // // //   // This function is no longer needed for initial fetch due to optimization
// // // //   // but kept for potential individual lookups if needed elsewhere.
// // // //   Future<String?> _getVideoLink(String id) async {
// // // //     final doc = await _firestore.collection('anime_links').doc(id).get();
// // // //     return (doc.exists && doc.data()?['link'] != null)
// // // //         ? doc.data()!['link'] as String
// // // //         : null;
// // // //   }

// // // //   void _showAddLinkDialog(String animeId) {
// // // //     final TextEditingController _controller = TextEditingController();
// // // //     showDialog(
// // // //       context: context,
// // // //       builder: (context) => AlertDialog(
// // // //         title: const Text('إضافة رابط مشاهدة'),
// // // //         content: TextField(
// // // //           controller: _controller,
// // // //           decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
// // // //         ),
// // // //         actions: [
// // // //           TextButton(
// // // //             onPressed: () {
// // // //               Navigator.pop(context);
// // // //             },
// // // //             child: const Text('إلغاء'),
// // // //           ),
// // // //           ElevatedButton(
// // // //             onPressed: () {
// // // //               _addLink(animeId, _controller.text);
// // // //               Navigator.pop(context);
// // // //             },
// // // //             child: const Text('حفظ'),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   void _startAutoScroll() {
// // // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // // //       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
// // // //         // Ensure there are enough anime for the carousel (at least 8 for your current logic)
// // // //         if (_currentPage < (_allAnime.take(8).length - 1)) {
// // // //           _currentPage++;
// // // //         } else {
// // // //           _currentPage = 0;
// // // //         }
// // // //         _pageController.animateToPage(
// // // //           _currentPage,
// // // //           duration: Duration(milliseconds: 800),
// // // //           curve: Curves.easeInOutCubic,
// // // //         );
// // // //       }
// // // //     });
// // // //   }

// // // //   void _searchAnime(String query) {
// // // //     setState(() {
// // // //       if (query.isEmpty) {
// // // //         _filteredAnime = _allAnime;
// // // //         _isSearching = false;
// // // //       } else {
// // // //         _filteredAnime = _allAnime
// // // //             .where(
// // // //               (anime) =>
// // // //                   anime.title.toLowerCase().contains(query.toLowerCase()),
// // // //             )
// // // //             .toList();
// // // //         _isSearching = true;
// // // //       }
// // // //     });
// // // //   }

// // // //   void _toggleSearch() {
// // // //     setState(() {
// // // //       _showSearchBar = !_showSearchBar;
// // // //       if (!_showSearchBar) {
// // // //         _searchController.clear();
// // // //         _searchAnime('');
// // // //       }
// // // //     });
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _timer?.cancel();
// // // //     _pageController.dispose();
// // // //     _searchController.dispose();
// // // //     _animationController.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
// // // //     List<Anime> featuredAnime = animeList
// // // //         .take(8)
// // // //         .toList(); // Take first 8 for carousel
// // // //     if (featuredAnime.isEmpty) {
// // // //       return SizedBox.shrink(); // Don't show if no anime
// // // //     }

// // // //     return Container(
// // // //       height: 280,
// // // //       margin: EdgeInsets.symmetric(vertical: 20),
// // // //       child: Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Padding(
// // // //             padding: EdgeInsets.symmetric(horizontal: 20),
// // // //             child: Row(
// // // //               children: [
// // // //                 Container(
// // // //                   width: 4,
// // // //                   height: 25,
// // // //                   decoration: BoxDecoration(
// // // //                     gradient: LinearGradient(
// // // //                       colors: [
// // // //                         Colors.purple,
// // // //                         Colors.deepPurple,
// // // //                       ], // Anime-themed gradient
// // // //                       begin: Alignment.topCenter,
// // // //                       end: Alignment.bottomCenter,
// // // //                     ),
// // // //                     borderRadius: BorderRadius.circular(2),
// // // //                   ),
// // // //                 ),
// // // //                 SizedBox(width: 10),
// // // //                 Text(
// // // //                   'الأنمي المميز',
// // // //                   style: TextStyle(
// // // //                     fontSize: 24,
// // // //                     fontWeight: FontWeight.bold,
// // // //                     color: Colors.white,
// // // //                     shadows: [
// // // //                       Shadow(
// // // //                         offset: Offset(2, 2),
// // // //                         blurRadius: 4,
// // // //                         color: Colors.black.withOpacity(0.5),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: 15),
// // // //           Expanded(
// // // //             child: PageView.builder(
// // // //               controller: _pageController,
// // // //               itemCount: featuredAnime.length,
// // // //               onPageChanged: (index) {
// // // //                 setState(() {
// // // //                   _currentPage = index;
// // // //                 });
// // // //               },
// // // //               itemBuilder: (context, index) {
// // // //                 final anime = featuredAnime[index];
// // // //                 return GestureDetector(
// // // //                   onTap: () {
// // // //                     Navigator.push(
// // // //                       context,
// // // //                       MaterialPageRoute(
// // // //                         builder: (context) => SeriesDetailsPage(
// // // //                           title: anime.title,
// // // //                           image: anime.imageUrl,
// // // //                           rating: anime.score,
// // // //                           year: anime.airedYear,
// // // //                           seasons:
// // // //                               '${anime.episodes} حلقة', // Map episodes to seasons
// // // //                           genre: anime.genre,
// // // //                           videoLink: anime.videoLink, // Pass the video link
// // // //                         ),
// // // //                       ),
// // // //                     );
// // // //                   },
// // // //                   child: Container(
// // // //                     margin: EdgeInsets.symmetric(horizontal: 15),
// // // //                     child: Stack(
// // // //                       children: [
// // // //                         ClipRRect(
// // // //                           borderRadius: BorderRadius.circular(20),
// // // //                           child: Container(
// // // //                             width: double.infinity,
// // // //                             decoration: BoxDecoration(
// // // //                               boxShadow: [
// // // //                                 BoxShadow(
// // // //                                   color: Colors.black.withOpacity(0.4),
// // // //                                   spreadRadius: 3,
// // // //                                   blurRadius: 15,
// // // //                                   offset: Offset(0, 8),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                             child: anime.imageUrl.isNotEmpty
// // // //                                 ? Image.network(
// // // //                                     anime.imageUrl,
// // // //                                     fit: BoxFit.cover,
// // // //                                     errorBuilder: (context, error, stackTrace) {
// // // //                                       return Container(
// // // //                                         decoration: BoxDecoration(
// // // //                                           gradient: LinearGradient(
// // // //                                             colors: [
// // // //                                               Colors.grey[800]!,
// // // //                                               Colors.grey[900]!,
// // // //                                             ],
// // // //                                             begin: Alignment.topLeft,
// // // //                                             end: Alignment.bottomRight,
// // // //                                           ),
// // // //                                         ),
// // // //                                         child: Center(
// // // //                                           child: Icon(
// // // //                                             Icons.image_not_supported_outlined,
// // // //                                             size: 60,
// // // //                                             color: Colors.white54,
// // // //                                           ),
// // // //                                         ),
// // // //                                       );
// // // //                                     },
// // // //                                   )
// // // //                                 : Container(
// // // //                                     decoration: BoxDecoration(
// // // //                                       gradient: LinearGradient(
// // // //                                         colors: [
// // // //                                           Colors.grey[800]!,
// // // //                                           Colors.grey[900]!,
// // // //                                         ],
// // // //                                         begin: Alignment.topLeft,
// // // //                                         end: Alignment.bottomRight,
// // // //                                       ),
// // // //                                     ),
// // // //                                     child: Center(
// // // //                                       child: Icon(
// // // //                                         Icons.image_not_supported_outlined,
// // // //                                         size: 60,
// // // //                                         color: Colors.white54,
// // // //                                       ),
// // // //                                     ),
// // // //                                   ),
// // // //                           ),
// // // //                         ),
// // // //                         Container(
// // // //                           decoration: BoxDecoration(
// // // //                             borderRadius: BorderRadius.circular(20),
// // // //                             gradient: LinearGradient(
// // // //                               begin: Alignment.topCenter,
// // // //                               end: Alignment.bottomCenter,
// // // //                               colors: [
// // // //                                 Colors.transparent,
// // // //                                 Colors.transparent,
// // // //                                 Colors.black.withOpacity(0.9),
// // // //                               ],
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                         Positioned(
// // // //                           bottom: 20,
// // // //                           left: 20,
// // // //                           right: 20,
// // // //                           child: Column(
// // // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // // //                             children: [
// // // //                               Text(
// // // //                                 anime.title,
// // // //                                 style: TextStyle(
// // // //                                   fontSize: 22,
// // // //                                   fontWeight: FontWeight.bold,
// // // //                                   color: Colors.white,
// // // //                                   shadows: [
// // // //                                     Shadow(
// // // //                                       offset: Offset(1, 1),
// // // //                                       blurRadius: 3,
// // // //                                       color: Colors.black,
// // // //                                     ),
// // // //                                   ],
// // // //                                 ),
// // // //                                 maxLines: 2,
// // // //                                 overflow: TextOverflow.ellipsis,
// // // //                               ),
// // // //                               SizedBox(height: 8),
// // // //                               Row(
// // // //                                 children: [
// // // //                                   Container(
// // // //                                     padding: EdgeInsets.symmetric(
// // // //                                       horizontal: 8,
// // // //                                       vertical: 4,
// // // //                                     ),
// // // //                                     decoration: BoxDecoration(
// // // //                                       color: Colors
// // // //                                           .purpleAccent, // Anime-themed color
// // // //                                       borderRadius: BorderRadius.circular(12),
// // // //                                     ),
// // // //                                     child: Row(
// // // //                                       mainAxisSize: MainAxisSize.min,
// // // //                                       children: [
// // // //                                         Icon(
// // // //                                           Icons.star,
// // // //                                           color: Colors.black,
// // // //                                           size: 16,
// // // //                                         ),
// // // //                                         SizedBox(width: 4),
// // // //                                         Text(
// // // //                                           anime.score,
// // // //                                           style: TextStyle(
// // // //                                             color: Colors.black,
// // // //                                             fontWeight: FontWeight.bold,
// // // //                                             fontSize: 12,
// // // //                                           ),
// // // //                                         ),
// // // //                                       ],
// // // //                                     ),
// // // //                                   ),
// // // //                                   SizedBox(width: 10),
// // // //                                   Text(
// // // //                                     anime.airedYear,
// // // //                                     style: TextStyle(
// // // //                                       color: Colors.white70,
// // // //                                       fontSize: 14,
// // // //                                     ),
// // // //                                   ),
// // // //                                   Spacer(),
// // // //                                   // Link status icon for carousel items
// // // //                                   Container(
// // // //                                     padding: const EdgeInsets.all(8),
// // // //                                     decoration: BoxDecoration(
// // // //                                       color: Colors.black.withOpacity(0.7),
// // // //                                       shape: BoxShape.circle,
// // // //                                     ),
// // // //                                     child:
// // // //                                         anime.videoLink != null &&
// // // //                                             anime.videoLink!.isNotEmpty
// // // //                                         ? const Icon(
// // // //                                             Icons.check_circle,
// // // //                                             color: Colors.green,
// // // //                                             size: 20,
// // // //                                           )
// // // //                                         : const Icon(
// // // //                                             Icons.link_off,
// // // //                                             color: Colors.red,
// // // //                                             size: 20,
// // // //                                           ),
// // // //                                   ),
// // // //                                 ],
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 );
// // // //               },
// // // //             ),
// // // //           ),
// // // //           SizedBox(height: 15),
// // // //           Row(
// // // //             mainAxisAlignment: MainAxisAlignment.center,
// // // //             children: List.generate(
// // // //               featuredAnime.length,
// // // //               (index) => AnimatedContainer(
// // // //                 duration: Duration(milliseconds: 300),
// // // //                 margin: EdgeInsets.symmetric(horizontal: 4),
// // // //                 width: _currentPage == index ? 30 : 10,
// // // //                 height: 6,
// // // //                 decoration: BoxDecoration(
// // // //                   gradient: _currentPage == index
// // // //                       ? LinearGradient(
// // // //                           colors: [Colors.purple, Colors.deepPurple],
// // // //                         )
// // // //                       : null,
// // // //                   color: _currentPage == index ? null : Colors.white38,
// // // //                   borderRadius: BorderRadius.circular(3),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildAnimeCard(Anime anime, int index) {
// // // //     return GestureDetector(
// // // //       onTap: () {
// // // //         Navigator.push(
// // // //           context,
// // // //           MaterialPageRoute(
// // // //             builder: (context) => SeriesDetailsPage(
// // // //               title: anime.title,
// // // //               image: anime.imageUrl,
// // // //               rating: anime.score,
// // // //               year: anime.airedYear,
// // // //               seasons: '${anime.episodes} حلقة', // Map episodes to seasons
// // // //               genre: anime.genre,
// // // //               videoLink: anime.videoLink, // Pass the video link
// // // //             ),
// // // //           ),
// // // //         );
// // // //       },
// // // //       child: AnimatedContainer(
// // // //         duration: Duration(milliseconds: 300 + (index * 50)),
// // // //         child: Container(
// // // //           decoration: BoxDecoration(
// // // //             borderRadius: BorderRadius.circular(18),
// // // //             boxShadow: [
// // // //               BoxShadow(
// // // //                 color: Colors.black.withOpacity(0.3),
// // // //                 spreadRadius: 2,
// // // //                 blurRadius: 12,
// // // //                 offset: Offset(0, 6),
// // // //               ),
// // // //             ],
// // // //           ),
// // // //           child: ClipRRect(
// // // //             borderRadius: BorderRadius.circular(18),
// // // //             child: Stack(
// // // //               children: [
// // // //                 Container(
// // // //                   width: double.infinity,
// // // //                   height: double.infinity,
// // // //                   child: anime.imageUrl.isNotEmpty
// // // //                       ? Image.network(
// // // //                           anime.imageUrl,
// // // //                           fit: BoxFit.cover,
// // // //                           errorBuilder: (context, error, stackTrace) {
// // // //                             return Container(
// // // //                               decoration: BoxDecoration(
// // // //                                 gradient: LinearGradient(
// // // //                                   colors: [
// // // //                                     Colors.grey[800]!,
// // // //                                     Colors.grey[900]!,
// // // //                                   ],
// // // //                                   begin: Alignment.topLeft,
// // // //                                   end: Alignment.bottomRight,
// // // //                                 ),
// // // //                               ),
// // // //                               child: Center(
// // // //                                 child: Icon(
// // // //                                   Icons.image_not_supported_outlined,
// // // //                                   size: 40,
// // // //                                   color: Colors.white54,
// // // //                                 ),
// // // //                               ),
// // // //                             );
// // // //                           },
// // // //                         )
// // // //                       : Container(
// // // //                           decoration: BoxDecoration(
// // // //                             gradient: LinearGradient(
// // // //                               colors: [Colors.grey[800]!, Colors.grey[900]!],
// // // //                               begin: Alignment.topLeft,
// // // //                               end: Alignment.bottomRight,
// // // //                             ),
// // // //                           ),
// // // //                           child: Center(
// // // //                             child: Icon(
// // // //                               Icons.image_not_supported_outlined,
// // // //                               size: 40,
// // // //                               color: Colors.white54,
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                 ),
// // // //                 Container(
// // // //                   decoration: BoxDecoration(
// // // //                     gradient: LinearGradient(
// // // //                       begin: Alignment.topCenter,
// // // //                       end: Alignment.bottomCenter,
// // // //                       colors: [
// // // //                         Colors.transparent,
// // // //                         Colors.transparent,
// // // //                         Colors.black.withOpacity(0.8),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 Positioned(
// // // //                   top: 8,
// // // //                   right: 8,
// // // //                   child: Container(
// // // //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// // // //                     decoration: BoxDecoration(
// // // //                       color: Colors.purpleAccent, // Anime-themed color
// // // //                       borderRadius: BorderRadius.circular(8),
// // // //                     ),
// // // //                     child: Row(
// // // //                       mainAxisSize: MainAxisSize.min,
// // // //                       children: [
// // // //                         Icon(Icons.star, color: Colors.black, size: 12),
// // // //                         SizedBox(width: 2),
// // // //                         Text(
// // // //                           anime.score,
// // // //                           style: TextStyle(
// // // //                             color: Colors.black,
// // // //                             fontWeight: FontWeight.bold,
// // // //                             fontSize: 10,
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //                 Positioned(
// // // //                   bottom: 8,
// // // //                   left: 8,
// // // //                   right: 8,
// // // //                   child: Text(
// // // //                     anime.title,
// // // //                     style: TextStyle(
// // // //                       fontSize: 13,
// // // //                       fontWeight: FontWeight.bold,
// // // //                       color: Colors.white,
// // // //                       shadows: [
// // // //                         Shadow(
// // // //                           offset: Offset(1, 1),
// // // //                           blurRadius: 2,
// // // //                           color: Colors.black,
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                     textAlign: TextAlign.center,
// // // //                     maxLines: 2,
// // // //                     overflow: TextOverflow.ellipsis,
// // // //                   ),
// // // //                 ),
// // // //                 // Link status icon for grid items
// // // //                 Positioned(
// // // //                   bottom: 8,
// // // //                   right: 8,
// // // //                   child: GestureDetector(
// // // //                     // onTap: () => _showAddLinkDialog(anime.malId),
// // // //                     child: Container(
// // // //                       padding: const EdgeInsets.all(4),
// // // //                       decoration: BoxDecoration(
// // // //                         color: Colors.black54,
// // // //                         borderRadius: BorderRadius.circular(8),
// // // //                       ),
// // // //                       child:
// // // //                           anime.videoLink != null && anime.videoLink!.isNotEmpty
// // // //                           ? const Icon(
// // // //                               Icons.check_circle,
// // // //                               color: Colors.green,
// // // //                               size: 20,
// // // //                             )
// // // //                           : const Icon(
// // // //                               Icons.link_off,
// // // //                               color: Colors.red,
// // // //                               size: 20,
// // // //                             ),
// // // //                     ),
// // // //                   ),
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         backgroundColor: Color(0xFF4A148C), // Dark purple for anime theme
// // // //         elevation: 0,
// // // //         title: Text(
// // // //           'مكتبة الأنمي',
// // // //           style: TextStyle(
// // // //             fontSize: 24,
// // // //             fontWeight: FontWeight.bold,
// // // //             color: Colors.white,
// // // //           ),
// // // //         ),
// // // //         centerTitle: true,
// // // //         actions: [
// // // //           IconButton(
// // // //             onPressed: _toggleSearch,
// // // //             icon: Icon(
// // // //               _showSearchBar ? Icons.close : Icons.search,
// // // //               color: Colors.white,
// // // //               size: 28,
// // // //             ),
// // // //           ),
// // // //           SizedBox(width: 10),
// // // //         ],
// // // //       ),
// // // //       body: Container(
// // // //         decoration: BoxDecoration(
// // // //           gradient: LinearGradient(
// // // //             begin: Alignment.topCenter,
// // // //             end: Alignment.bottomCenter,
// // // //             colors: [
// // // //               Color(0xFF4A148C),
// // // //               Color(0xFF6A1B9A),
// // // //               Color(0xFF880E4F),
// // // //             ], // Purple gradient
// // // //           ),
// // // //         ),
// // // //         child: FadeTransition(
// // // //           opacity: _fadeAnimation,
// // // //           child: FutureBuilder<List<Anime>>(
// // // //             future: _animeFuture,
// // // //             builder: (context, snapshot) {
// // // //               if (snapshot.connectionState == ConnectionState.waiting) {
// // // //                 return Center(
// // // //                   child: CircularProgressIndicator(color: Colors.purpleAccent),
// // // //                 );
// // // //               } else if (snapshot.hasError) {
// // // //                 return Center(
// // // //                   child: Text(
// // // //                     "Error: ${snapshot.error}",
// // // //                     style: TextStyle(color: Colors.white),
// // // //                   ),
// // // //                 );
// // // //               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // // //                 return Center(
// // // //                   child: Text(
// // // //                     "No anime found.",
// // // //                     style: TextStyle(color: Colors.white),
// // // //                   ),
// // // //                 );
// // // //               } else {
// // // //                 return CustomScrollView(
// // // //                   slivers: [
// // // //                     if (_showSearchBar)
// // // //                       SliverToBoxAdapter(
// // // //                         child: Container(
// // // //                           padding: EdgeInsets.all(20),
// // // //                           child: Container(
// // // //                             decoration: BoxDecoration(
// // // //                               color: Colors.white.withOpacity(0.1),
// // // //                               borderRadius: BorderRadius.circular(25),
// // // //                               border: Border.all(
// // // //                                 color: Colors.white.withOpacity(0.2),
// // // //                                 width: 1,
// // // //                               ),
// // // //                             ),
// // // //                             child: TextField(
// // // //                               controller: _searchController,
// // // //                               onChanged: _searchAnime,
// // // //                               style: TextStyle(color: Colors.white),
// // // //                               autofocus: true,
// // // //                               decoration: InputDecoration(
// // // //                                 hintText: 'ابحث عن أنمي...',
// // // //                                 hintStyle: TextStyle(color: Colors.white60),
// // // //                                 prefixIcon: Icon(
// // // //                                   Icons.search,
// // // //                                   color: Colors.white70,
// // // //                                 ),
// // // //                                 border: InputBorder.none,
// // // //                                 contentPadding: EdgeInsets.symmetric(
// // // //                                   horizontal: 20,
// // // //                                   vertical: 15,
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     if (!_isSearching)
// // // //                       SliverToBoxAdapter(
// // // //                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
// // // //                       ),
// // // //                     SliverToBoxAdapter(
// // // //                       child: Padding(
// // // //                         padding: EdgeInsets.symmetric(
// // // //                           horizontal: 20,
// // // //                           vertical: 10,
// // // //                         ),
// // // //                         child: Row(
// // // //                           children: [
// // // //                             Container(
// // // //                               width: 4,
// // // //                               height: 25,
// // // //                               decoration: BoxDecoration(
// // // //                                 gradient: LinearGradient(
// // // //                                   colors: [
// // // //                                     Colors.pink,
// // // //                                     Colors.redAccent,
// // // //                                   ], // Anime-themed gradient
// // // //                                   begin: Alignment.topCenter,
// // // //                                   end: Alignment.bottomCenter,
// // // //                                 ),
// // // //                                 borderRadius: BorderRadius.circular(2),
// // // //                               ),
// // // //                             ),
// // // //                             SizedBox(width: 10),
// // // //                             Text(
// // // //                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
// // // //                               style: TextStyle(
// // // //                                 fontSize: 24,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                                 color: Colors.white,
// // // //                                 shadows: [
// // // //                                   Shadow(
// // // //                                     offset: Offset(2, 2),
// // // //                                     blurRadius: 4,
// // // //                                     color: Colors.black.withOpacity(0.5),
// // // //                                   ),
// // // //                                 ],
// // // //                               ),
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                     SliverPadding(
// // // //                       padding: EdgeInsets.symmetric(
// // // //                         horizontal: 20,
// // // //                         vertical: 10,
// // // //                       ),
// // // //                       sliver: SliverGrid(
// // // //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // // //                           crossAxisCount: 3,
// // // //                           childAspectRatio: 0.65,
// // // //                           crossAxisSpacing: 12,
// // // //                           mainAxisSpacing: 15,
// // // //                         ),
// // // //                         delegate: SliverChildBuilderDelegate((context, index) {
// // // //                           return _filteredAnime.isNotEmpty
// // // //                               ? _buildAnimeCard(_filteredAnime[index], index)
// // // //                               : Center(
// // // //                                   child: Text(
// // // //                                     "No results found.",
// // // //                                     style: TextStyle(color: Colors.white),
// // // //                                   ),
// // // //                                 );
// // // //                         }, childCount: _filteredAnime.length),
// // // //                       ),
// // // //                     ),
// // // //                     SliverToBoxAdapter(child: SizedBox(height: 30)),
// // // //                   ],
// // // //                 );
// // // //               }
// // // //             },
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:flutter/material.dart';
// // // import 'dart:async';
// // // import 'dart:convert'; // For JSON decoding
// // // import 'package:http/http.dart' as http; // For making HTTP requests
// // // import 'package:cloud_firestore/cloud_firestore.dart'; // For Firebase Firestore
// // // import 'package:korrrrrrrr/serias_screens/series_detiels.dart'; // Reusing SeriesDetailsPage for anime details

// // // // Define an Anime model to better handle data from Jikan API and Firestore
// // // class Anime {
// // //   final String malId; // Used as ID for both Jikan and custom
// // //   final String title;
// // //   final String imageUrl;
// // //   final String score; // Can be rating from Firestore
// // //   final String airedYear; // Can be year from Firestore
// // //   final String
// // //   episodesOrSeasons; // To handle "episodes" from Jikan or "seasons" from Firestore
// // //   final String synopsis;
// // //   final String genre;
// // //   String? videoLink; // Nullable video link
// // //   final bool isCustom; // To distinguish between Jikan and custom anime

// // //   Anime({
// // //     required this.malId,
// // //     required this.title,
// // //     required this.imageUrl,
// // //     required this.score,
// // //     required this.airedYear,
// // //     required this.episodesOrSeasons,
// // //     required this.synopsis,
// // //     required this.genre,
// // //     this.videoLink,
// // //     this.isCustom = false, // Default to false for Jikan anime
// // //   });

// // //   // Factory constructor for Jikan API response
// // //   factory Anime.fromJson(Map<String, dynamic> json) {
// // //     final images = json['images']?['jpg'];
// // //     final aired = json['aired'];
// // //     final genres = json['genres'] as List?;
// // //     return Anime(
// // //       malId: json['mal_id'].toString(),
// // //       title: json['title_english'] ?? json['title'] ?? 'N/A',
// // //       imageUrl: images?['large_image_url'] ?? images?['image_url'] ?? '',
// // //       score: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// // //       airedYear:
// // //           (aired?['prop']?['from']?['year'] as int?)?.toString() ?? 'N/A',
// // //       episodesOrSeasons:
// // //           '${json['episodes'] as int? ?? 0} حلقة', // Jikan uses episodes
// // //       synopsis: json['synopsis'] ?? 'No synopsis available.',
// // //       genre: genres != null && genres.isNotEmpty
// // //           ? genres[0]['name'] ?? 'N/A'
// // //           : 'N/A',
// // //       isCustom: false,
// // //     );
// // //   }

// // //   // Factory constructor for Firestore 'add_anime' collection
// // //   factory Anime.fromFirestore(Map<String, dynamic> json, String docId) {
// // //     return Anime(
// // //       malId: docId, // Use document ID as malId for custom anime
// // //       title: json['title'] ?? 'N/A',
// // //       imageUrl: json['image'] ?? '',
// // //       score:
// // //           (json['rating'] as num?)?.toString() ??
// // //           'N/A', // Firestore uses 'rating'
// // //       airedYear:
// // //           (json['year'] as num?)?.toString() ?? 'N/A', // Firestore uses 'year'
// // //       episodesOrSeasons: json['seasons'] ?? 'N/A', // Firestore uses 'seasons'
// // //       synopsis:
// // //           json['synopsis'] ??
// // //           'No synopsis available.', // Assuming synopsis might be present
// // //       genre: json['genre'] ?? 'N/A',
// // //       videoLink:
// // //           json['videolink']
// // //               as String?, // Firestore uses 'videolink' (lowercase 'l')
// // //       isCustom: true,
// // //     );
// // //   }
// // // }

// // // class AnimePage extends StatefulWidget {
// // //   @override
// // //   _AnimePageState createState() => _AnimePageState();
// // // }

// // // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// // //   PageController _pageController = PageController();
// // //   TextEditingController _searchController = TextEditingController();
// // //   Timer? _timer;
// // //   int _currentPage = 0;
// // //   bool _isSearching = false;
// // //   bool _showSearchBar = false;
// // //   List<Anime> _allAnime = []; // Stores all fetched anime
// // //   List<Anime> _filteredAnime = []; // Stores anime after search filter
// // //   late Future<List<Anime>> _animeFuture; // Future for fetching anime
// // //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// // //   late AnimationController _animationController;
// // //   late Animation<double> _fadeAnimation;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _animationController = AnimationController(
// // //       duration: Duration(milliseconds: 300),
// // //       vsync: this,
// // //     );
// // //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// // //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// // //     );
// // //     _animationController.forward();
// // //     _animeFuture = _fetchAndProcessAnime();
// // //     _startAutoScroll();
// // //   }

// // //   Future<List<Anime>> _fetchAndProcessAnime() async {
// // //     List<Anime> combinedAnime = [];

// // //     // 1. Fetch from Jikan API
// // //     try {
// // //       final response = await http.get(
// // //         Uri.parse('https://api.jikan.moe/v4/top/anime'),
// // //       );
// // //       if (response.statusCode == 200) {
// // //         final jsonData = json.decode(response.body);
// // //         List<Anime> fetchedJikanAnime = List<Map<String, dynamic>>.from(
// // //           jsonData['data'],
// // //         ).map((json) => Anime.fromJson(json)).toList();
// // //         combinedAnime.addAll(fetchedJikanAnime);
// // //       } else {
// // //         print('Failed to load anime from Jikan API: ${response.statusCode}');
// // //       }
// // //     } catch (e) {
// // //       print('Error fetching Jikan API anime: $e');
// // //     }

// // //     // 2. Fetch custom anime from Firebase 'add_anime' collection
// // //     try {
// // //       final QuerySnapshot customAnimeSnapshot = await _firestore
// // //           .collection('add_anime')
// // //           .get();
// // //       List<Anime> fetchedCustomAnime = customAnimeSnapshot.docs.map((doc) {
// // //         return Anime.fromFirestore(doc.data() as Map<String, dynamic>, doc.id);
// // //       }).toList();
// // //       combinedAnime.addAll(fetchedCustomAnime);
// // //     } catch (e) {
// // //       print('Error fetching custom anime from Firebase: $e');
// // //     }

// // //     // 3. Fetch all video links from Firebase 'anime_links' for Jikan anime
// // //     // This step is only for Jikan anime, as custom anime have videolink directly in their doc
// // //     final QuerySnapshot firebaseLinksSnapshot = await _firestore
// // //         .collection('anime')
// // //         .get();
// // //     final Map<String, String> jikanVideoLinksMap = {};
// // //     for (var doc in firebaseLinksSnapshot.docs) {
// // //       if (doc.data() != null &&
// // //           (doc.data() as Map<String, dynamic>).containsKey('link')) {
// // //         jikanVideoLinksMap[doc.id] =
// // //             (doc.data() as Map<String, dynamic>)['link'] as String;
// // //       }
// // //     }

// // //     // 4. Assign video links to Jikan anime in the combined list
// // //     for (var anime in combinedAnime) {
// // //       if (!anime.isCustom) {
// // //         // Only for Jikan anime
// // //         anime.videoLink = jikanVideoLinksMap[anime.malId];
// // //       }
// // //       // Custom anime already have their videoLink set in fromFirestore constructor
// // //     }

// // //     setState(() {
// // //       _allAnime = combinedAnime;
// // //       _filteredAnime = _allAnime; // Initialize filtered list with all anime
// // //     });
// // //     return combinedAnime;
// // //   }

// // //   // Future<void> _addLink(String animeId, String link, bool isCustom) async {
// // //   //   try {
// // //   //     if (isCustom) {
// // //   //       // Update 'videolink' directly in the 'add_anime' document
// // //   //       await _firestore.collection("add_anime").doc(animeId).set({
// // //   //         'videolink': link, // Note: lowercase 'l' as per screenshot
// // //   //       }, SetOptions(merge: true));
// // //   //     } else {
// // //   //       // For Jikan anime, update 'link' in 'anime_links' collection
// // //   //       await _firestore.collection("anime_links").doc(animeId).set({
// // //   //         'link': link,
// // //   //       }, SetOptions(merge: true));
// // //   //     }

// // //   //     // Update the specific anime's link in the local list and trigger rebuild
// // //   //     setState(() {
// // //   //       final index = _allAnime.indexWhere((anime) => anime.malId == animeId);
// // //   //       if (index != -1) {
// // //   //         _allAnime[index].videoLink = link;
// // //   //         // Re-apply filter to update _filteredAnime if searching
// // //   //         _searchAnime(_searchController.text);
// // //   //       }
// // //   //     });
// // //   //     ScaffoldMessenger.of(context).showSnackBar(
// // //   //       SnackBar(
// // //   //         content: Text('تم إضافة الرابط بنجاح!'),
// // //   //         backgroundColor: Colors.green,
// // //   //       ),
// // //   //     );
// // //   //   } catch (e) {
// // //   //     ScaffoldMessenger.of(context).showSnackBar(
// // //   //       SnackBar(
// // //   //         content: Text('فشل إضافة الرابط: $e'),
// // //   //         backgroundColor: Colors.red,
// // //   //       ),
// // //   //     );
// // //   //   }
// // //   // }

// // //   // This function is no longer needed for initial fetch due to optimization
// // //   // but kept for potential individual lookups if needed elsewhere.
// // //   Future<String?> _getVideoLink(String id) async {
// // //     // This function needs to be updated to check both collections if used for general lookup
// // //     // For now, it's not actively used in the main fetch flow.
// // //     final doc = await _firestore.collection('anime').doc(id).get();
// // //     if (doc.exists && doc.data()?['link'] != null) {
// // //       return (doc.data() as Map<String, dynamic>)['link'] as String;
// // //     }

// // //     // final customDoc = await _firestore.collection('add_anime').doc(id).get();
// // //     // if (customDoc.exists && customDoc.data()?['videoLink'] != null) {
// // //     //   return (customDoc.data() as Map<String, dynamic>)['videoLink'] as String;
// // //     // }
// // //     return null;
// // //   }

// // //   // void _showAddLinkDialog(String animeId, bool isCustom) {
// // //   //   final TextEditingController _controller = TextEditingController();
// // //   //   showDialog(
// // //   //     context: context,
// // //   //     builder: (context) => AlertDialog(
// // //   //       title: const Text('إضافة رابط مشاهدة'),
// // //   //       content: TextField(
// // //   //         controller: _controller,
// // //   //         decoration: const InputDecoration(hintText: 'ضع الرابط هنا'),
// // //   //       ),
// // //   //       actions: [
// // //   //         TextButton(
// // //   //           onPressed: () {
// // //   //             Navigator.pop(context);
// // //   //           },
// // //   //           child: const Text('إلغاء'),
// // //   //         ),
// // //   //         ElevatedButton(
// // //   //           onPressed: () {
// // //   //             _addLink(animeId, _controller.text, isCustom); // Pass isCustom
// // //   //             Navigator.pop(context);
// // //   //           },
// // //   //           child: const Text('حفظ'),
// // //   //         ),
// // //   //       ],
// // //   //     ),
// // //   //   );
// // //   // }

// // //   void _startAutoScroll() {
// // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // //       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
// // //         // Ensure there are enough anime for the carousel (at least 8 for your current logic)
// // //         if (_currentPage < (_allAnime.take(8).length - 1)) {
// // //           _currentPage++;
// // //         } else {
// // //           _currentPage = 0;
// // //         }
// // //         _pageController.animateToPage(
// // //           _currentPage,
// // //           duration: Duration(milliseconds: 800),
// // //           curve: Curves.easeInOutCubic,
// // //         );
// // //       }
// // //     });
// // //   }

// // //   void _searchAnime(String query) {
// // //     setState(() {
// // //       if (query.isEmpty) {
// // //         _filteredAnime = _allAnime;
// // //         _isSearching = false;
// // //       } else {
// // //         _filteredAnime = _allAnime
// // //             .where(
// // //               (anime) =>
// // //                   anime.title.toLowerCase().contains(query.toLowerCase()),
// // //             )
// // //             .toList();
// // //         _isSearching = true;
// // //       }
// // //     });
// // //   }

// // //   void _toggleSearch() {
// // //     setState(() {
// // //       _showSearchBar = !_showSearchBar;
// // //       if (!_showSearchBar) {
// // //         _searchController.clear();
// // //         _searchAnime('');
// // //       }
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _timer?.cancel();
// // //     _pageController.dispose();
// // //     _searchController.dispose();
// // //     _animationController.dispose();
// // //     super.dispose();
// // //   }

// // //   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
// // //     // Filter out custom anime from the carousel if you only want Jikan API ones here
// // //     // Or include them if you want a mix. For now, it takes the first 8 from the combined list.
// // //     List<Anime> featuredAnime = animeList.take(8).toList();
// // //     if (featuredAnime.isEmpty) {
// // //       return SizedBox.shrink(); // Don't show if no anime
// // //     }
// // //     return Container(
// // //       height: 280,
// // //       margin: EdgeInsets.symmetric(vertical: 20),
// // //       child: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           Padding(
// // //             padding: EdgeInsets.symmetric(horizontal: 20),
// // //             child: Row(
// // //               children: [
// // //                 Container(
// // //                   width: 4,
// // //                   height: 25,
// // //                   decoration: BoxDecoration(
// // //                     gradient: LinearGradient(
// // //                       colors: [
// // //                         Colors.purple,
// // //                         Colors.deepPurple,
// // //                       ], // Anime-themed gradient
// // //                       begin: Alignment.topCenter,
// // //                       end: Alignment.bottomCenter,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(2),
// // //                   ),
// // //                 ),
// // //                 SizedBox(width: 10),
// // //                 Text(
// // //                   'الأنمي المميز',
// // //                   style: TextStyle(
// // //                     fontSize: 24,
// // //                     fontWeight: FontWeight.bold,
// // //                     color: Colors.white,
// // //                     shadows: [
// // //                       Shadow(
// // //                         offset: Offset(2, 2),
// // //                         blurRadius: 4,
// // //                         color: Colors.black.withOpacity(0.5),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //           SizedBox(height: 15),
// // //           Expanded(
// // //             child: PageView.builder(
// // //               controller: _pageController,
// // //               itemCount: featuredAnime.length,
// // //               onPageChanged: (index) {
// // //                 setState(() {
// // //                   _currentPage = index;
// // //                 });
// // //               },
// // //               itemBuilder: (context, index) {
// // //                 final anime = featuredAnime[index];
// // //                 return GestureDetector(
// // //                   onTap: () {
// // //                     Navigator.push(
// // //                       context,
// // //                       MaterialPageRoute(
// // //                         builder: (context) => SeriesDetailsPage(
// // //                           title: anime.title,
// // //                           image: anime.imageUrl,
// // //                           rating: anime.score,
// // //                           year: anime.airedYear,
// // //                           seasons:
// // //                               anime.episodesOrSeasons, // Use the unified field
// // //                           genre: anime.genre,
// // //                           videoLink: anime.videoLink, // Pass the video link
// // //                         ),
// // //                       ),
// // //                     );
// // //                   },
// // //                   child: Container(
// // //                     margin: EdgeInsets.symmetric(horizontal: 15),
// // //                     child: Stack(
// // //                       children: [
// // //                         ClipRRect(
// // //                           borderRadius: BorderRadius.circular(20),
// // //                           child: Container(
// // //                             width: double.infinity,
// // //                             decoration: BoxDecoration(
// // //                               boxShadow: [
// // //                                 BoxShadow(
// // //                                   color: Colors.black.withOpacity(0.4),
// // //                                   spreadRadius: 3,
// // //                                   blurRadius: 15,
// // //                                   offset: Offset(0, 8),
// // //                                 ),
// // //                               ],
// // //                             ),
// // //                             child: anime.imageUrl.isNotEmpty
// // //                                 ? Image.network(
// // //                                     anime.imageUrl,
// // //                                     fit: BoxFit.cover,
// // //                                     errorBuilder: (context, error, stackTrace) {
// // //                                       return Container(
// // //                                         decoration: BoxDecoration(
// // //                                           gradient: LinearGradient(
// // //                                             colors: [
// // //                                               Colors.grey[800]!,
// // //                                               Colors.grey[900]!,
// // //                                             ],
// // //                                             begin: Alignment.topLeft,
// // //                                             end: Alignment.bottomRight,
// // //                                           ),
// // //                                         ),
// // //                                         child: Center(
// // //                                           child: Icon(
// // //                                             Icons.image_not_supported_outlined,
// // //                                             size: 60,
// // //                                             color: Colors.white54,
// // //                                           ),
// // //                                         ),
// // //                                       );
// // //                                     },
// // //                                   )
// // //                                 : Container(
// // //                                     decoration: BoxDecoration(
// // //                                       gradient: LinearGradient(
// // //                                         colors: [
// // //                                           Colors.grey[800]!,
// // //                                           Colors.grey[900]!,
// // //                                         ],
// // //                                         begin: Alignment.topLeft,
// // //                                         end: Alignment.bottomRight,
// // //                                       ),
// // //                                     ),
// // //                                     child: Center(
// // //                                       child: Icon(
// // //                                         Icons.image_not_supported_outlined,
// // //                                         size: 60,
// // //                                         color: Colors.white54,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                           ),
// // //                         ),
// // //                         Container(
// // //                           decoration: BoxDecoration(
// // //                             borderRadius: BorderRadius.circular(20),
// // //                             gradient: LinearGradient(
// // //                               begin: Alignment.topCenter,
// // //                               end: Alignment.bottomCenter,
// // //                               colors: [
// // //                                 Colors.transparent,
// // //                                 Colors.transparent,
// // //                                 Colors.black.withOpacity(0.9),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ),
// // //                         Positioned(
// // //                           bottom: 20,
// // //                           left: 20,
// // //                           right: 20,
// // //                           child: Column(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Text(
// // //                                 anime.title,
// // //                                 style: TextStyle(
// // //                                   fontSize: 22,
// // //                                   fontWeight: FontWeight.bold,
// // //                                   color: Colors.white,
// // //                                   shadows: [
// // //                                     Shadow(
// // //                                       offset: Offset(1, 1),
// // //                                       blurRadius: 3,
// // //                                       color: Colors.black,
// // //                                     ),
// // //                                   ],
// // //                                 ),
// // //                                 maxLines: 2,
// // //                                 overflow: TextOverflow.ellipsis,
// // //                               ),
// // //                               SizedBox(height: 8),
// // //                               Row(
// // //                                 children: [
// // //                                   Container(
// // //                                     padding: EdgeInsets.symmetric(
// // //                                       horizontal: 8,
// // //                                       vertical: 4,
// // //                                     ),
// // //                                     decoration: BoxDecoration(
// // //                                       color: Colors
// // //                                           .purpleAccent, // Anime-themed color
// // //                                       borderRadius: BorderRadius.circular(12),
// // //                                     ),
// // //                                     child: Row(
// // //                                       mainAxisSize: MainAxisSize.min,
// // //                                       children: [
// // //                                         Icon(
// // //                                           Icons.star,
// // //                                           color: Colors.black,
// // //                                           size: 16,
// // //                                         ),
// // //                                         SizedBox(width: 4),
// // //                                         Text(
// // //                                           anime.score,
// // //                                           style: TextStyle(
// // //                                             color: Colors.black,
// // //                                             fontWeight: FontWeight.bold,
// // //                                             fontSize: 12,
// // //                                           ),
// // //                                         ),
// // //                                       ],
// // //                                     ),
// // //                                   ),
// // //                                   SizedBox(width: 10),
// // //                                   Text(
// // //                                     anime.airedYear,
// // //                                     style: TextStyle(
// // //                                       color: Colors.white70,
// // //                                       fontSize: 14,
// // //                                     ),
// // //                                   ),
// // //                                   Spacer(),
// // //                                   // Link status icon for carousel items
// // //                                   Container(
// // //                                     padding: const EdgeInsets.all(8),
// // //                                     decoration: BoxDecoration(
// // //                                       color: Colors.black.withOpacity(0.7),
// // //                                       shape: BoxShape.circle,
// // //                                     ),
// // //                                     child:
// // //                                         anime.videoLink != null &&
// // //                                             anime.videoLink!.isNotEmpty
// // //                                         ? const Icon(
// // //                                             Icons.check_circle,
// // //                                             color: Colors.green,
// // //                                             size: 20,
// // //                                           )
// // //                                         : const Icon(
// // //                                             Icons.link_off,
// // //                                             color: Colors.red,
// // //                                             size: 20,
// // //                                           ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 );
// // //               },
// // //             ),
// // //           ),
// // //           SizedBox(height: 15),
// // //           Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: List.generate(
// // //               featuredAnime.length,
// // //               (index) => AnimatedContainer(
// // //                 duration: Duration(milliseconds: 300),
// // //                 margin: EdgeInsets.symmetric(horizontal: 4),
// // //                 width: _currentPage == index ? 30 : 10,
// // //                 height: 6,
// // //                 decoration: BoxDecoration(
// // //                   gradient: _currentPage == index
// // //                       ? LinearGradient(
// // //                           colors: [Colors.purple, Colors.deepPurple],
// // //                         )
// // //                       : null,
// // //                   color: _currentPage == index ? null : Colors.white38,
// // //                   borderRadius: BorderRadius.circular(3),
// // //                 ),
// // //               ),
// // //             ),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildAnimeCard(Anime anime, int index) {
// // //     return GestureDetector(
// // //       onTap: () {
// // //         Navigator.push(
// // //           context,
// // //           MaterialPageRoute(
// // //             builder: (context) => SeriesDetailsPage(
// // //               title: anime.title,
// // //               image: anime.imageUrl,
// // //               rating: anime.score,
// // //               year: anime.airedYear,
// // //               seasons: anime.episodesOrSeasons, // Use the unified field
// // //               genre: anime.genre,
// // //               videoLink: anime.videoLink, // Pass the video link
// // //             ),
// // //           ),
// // //         );
// // //       },
// // //       // onLongPress: () =>
// // //       //     _showAddLinkDialog(anime.malId, anime.isCustom), // Pass isCustom
// // //       child: AnimatedContainer(
// // //         duration: Duration(milliseconds: 300 + (index * 50)),
// // //         child: Container(
// // //           decoration: BoxDecoration(
// // //             borderRadius: BorderRadius.circular(18),
// // //             boxShadow: [
// // //               BoxShadow(
// // //                 color: Colors.black.withOpacity(0.3),
// // //                 spreadRadius: 2,
// // //                 blurRadius: 12,
// // //                 offset: Offset(0, 6),
// // //               ),
// // //             ],
// // //           ),
// // //           child: ClipRRect(
// // //             borderRadius: BorderRadius.circular(18),
// // //             child: Stack(
// // //               children: [
// // //                 Container(
// // //                   width: double.infinity,
// // //                   height: double.infinity,
// // //                   child: anime.imageUrl.isNotEmpty
// // //                       ? Image.network(
// // //                           anime.imageUrl,
// // //                           fit: BoxFit.cover,
// // //                           errorBuilder: (context, error, stackTrace) {
// // //                             return Container(
// // //                               decoration: BoxDecoration(
// // //                                 gradient: LinearGradient(
// // //                                   colors: [
// // //                                     Colors.grey[800]!,
// // //                                     Colors.grey[900]!,
// // //                                   ],
// // //                                   begin: Alignment.topLeft,
// // //                                   end: Alignment.bottomRight,
// // //                                 ),
// // //                               ),
// // //                               child: Center(
// // //                                 child: Icon(
// // //                                   Icons.image_not_supported_outlined,
// // //                                   size: 40,
// // //                                   color: Colors.white54,
// // //                                 ),
// // //                               ),
// // //                             );
// // //                           },
// // //                         )
// // //                       : Container(
// // //                           decoration: BoxDecoration(
// // //                             gradient: LinearGradient(
// // //                               colors: [Colors.grey[800]!, Colors.grey[900]!],
// // //                               begin: Alignment.topLeft,
// // //                               end: Alignment.bottomRight,
// // //                             ),
// // //                           ),
// // //                           child: Center(
// // //                             child: Icon(
// // //                               Icons.image_not_supported_outlined,
// // //                               size: 40,
// // //                               color: Colors.white54,
// // //                             ),
// // //                           ),
// // //                         ),
// // //                 ),
// // //                 Container(
// // //                   decoration: BoxDecoration(
// // //                     gradient: LinearGradient(
// // //                       begin: Alignment.topCenter,
// // //                       end: Alignment.bottomCenter,
// // //                       colors: [
// // //                         Colors.transparent,
// // //                         Colors.transparent,
// // //                         Colors.black.withOpacity(0.8),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Positioned(
// // //                   top: 8,
// // //                   right: 8,
// // //                   child: Container(
// // //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// // //                     decoration: BoxDecoration(
// // //                       color: Colors.purpleAccent, // Anime-themed color
// // //                       borderRadius: BorderRadius.circular(8),
// // //                     ),
// // //                     child: Row(
// // //                       mainAxisSize: MainAxisSize.min,
// // //                       children: [
// // //                         Icon(Icons.star, color: Colors.black, size: 12),
// // //                         SizedBox(width: 2),
// // //                         Text(
// // //                           anime.score,
// // //                           style: TextStyle(
// // //                             color: Colors.black,
// // //                             fontWeight: FontWeight.bold,
// // //                             fontSize: 10,
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ),
// // //                 Positioned(
// // //                   bottom: 8,
// // //                   left: 8,
// // //                   right: 8,
// // //                   child: Text(
// // //                     anime.title,
// // //                     style: TextStyle(
// // //                       fontSize: 13,
// // //                       fontWeight: FontWeight.bold,
// // //                       color: Colors.white,
// // //                       shadows: [
// // //                         Shadow(
// // //                           offset: Offset(1, 1),
// // //                           blurRadius: 2,
// // //                           color: Colors.black,
// // //                         ),
// // //                       ],
// // //                     ),
// // //                     textAlign: TextAlign.center,
// // //                     maxLines: 2,
// // //                     overflow: TextOverflow.ellipsis,
// // //                   ),
// // //                 ),
// // //                 // Link status icon for grid items
// // //                 Positioned(
// // //                   bottom: 8,
// // //                   right: 8,
// // //                   child: GestureDetector(
// // //                     // onTap: () => _showAddLinkDialog(
// // //                     //   anime.malId,
// // //                     //   anime.isCustom,
// // //                     // ), // Pass isCustom
// // //                     child: Container(
// // //                       padding: const EdgeInsets.all(4),
// // //                       decoration: BoxDecoration(
// // //                         color: Colors.black54,
// // //                         borderRadius: BorderRadius.circular(8),
// // //                       ),
// // //                       child:
// // //                           anime.videoLink != null && anime.videoLink!.isNotEmpty
// // //                           ? const Icon(
// // //                               Icons.check_circle,
// // //                               color: Colors.green,
// // //                               size: 20,
// // //                             )
// // //                           : const Icon(
// // //                               Icons.link_off,
// // //                               color: Colors.red,
// // //                               size: 20,
// // //                             ),
// // //                     ),
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         backgroundColor: Color(0xFF4A148C), // Dark purple for anime theme
// // //         elevation: 0,
// // //         title: Text(
// // //           'مكتبة الأنمي',
// // //           style: TextStyle(
// // //             fontSize: 24,
// // //             fontWeight: FontWeight.bold,
// // //             color: Colors.white,
// // //           ),
// // //         ),
// // //         centerTitle: true,
// // //         actions: [
// // //           IconButton(
// // //             onPressed: _toggleSearch,
// // //             icon: Icon(
// // //               _showSearchBar ? Icons.close : Icons.search,
// // //               color: Colors.white,
// // //               size: 28,
// // //             ),
// // //           ),
// // //           SizedBox(width: 10),
// // //         ],
// // //       ),
// // //       body: Container(
// // //         decoration: BoxDecoration(
// // //           gradient: LinearGradient(
// // //             begin: Alignment.topCenter,
// // //             end: Alignment.bottomCenter,
// // //             colors: [
// // //               Color(0xFF4A148C),
// // //               Color(0xFF6A1B9A),
// // //               Color(0xFF880E4F),
// // //             ], // Purple gradient
// // //           ),
// // //         ),
// // //         child: FadeTransition(
// // //           opacity: _fadeAnimation,
// // //           child: FutureBuilder<List<Anime>>(
// // //             future: _animeFuture,
// // //             builder: (context, snapshot) {
// // //               if (snapshot.connectionState == ConnectionState.waiting) {
// // //                 return Center(
// // //                   child: CircularProgressIndicator(color: Colors.purpleAccent),
// // //                 );
// // //               } else if (snapshot.hasError) {
// // //                 return Center(
// // //                   child: Text(
// // //                     "Error: ${snapshot.error}",
// // //                     style: TextStyle(color: Colors.white),
// // //                   ),
// // //                 );
// // //               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// // //                 return Center(
// // //                   child: Text(
// // //                     "No anime found.",
// // //                     style: TextStyle(color: Colors.white),
// // //                   ),
// // //                 );
// // //               } else {
// // //                 return CustomScrollView(
// // //                   slivers: [
// // //                     if (_showSearchBar)
// // //                       SliverToBoxAdapter(
// // //                         child: Container(
// // //                           padding: EdgeInsets.all(20),
// // //                           child: Container(
// // //                             decoration: BoxDecoration(
// // //                               color: Colors.white.withOpacity(0.1),
// // //                               borderRadius: BorderRadius.circular(25),
// // //                               border: Border.all(
// // //                                 color: Colors.white.withOpacity(0.2),
// // //                                 width: 1,
// // //                               ),
// // //                             ),
// // //                             child: TextField(
// // //                               controller: _searchController,
// // //                               onChanged: _searchAnime,
// // //                               style: TextStyle(color: Colors.white),
// // //                               autofocus: true,
// // //                               decoration: InputDecoration(
// // //                                 hintText: 'ابحث عن أنمي...',
// // //                                 hintStyle: TextStyle(color: Colors.white60),
// // //                                 prefixIcon: Icon(
// // //                                   Icons.search,
// // //                                   color: Colors.white70,
// // //                                 ),
// // //                                 border: InputBorder.none,
// // //                                 contentPadding: EdgeInsets.symmetric(
// // //                                   horizontal: 20,
// // //                                   vertical: 15,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     if (!_isSearching)
// // //                       SliverToBoxAdapter(
// // //                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
// // //                       ),
// // //                     SliverToBoxAdapter(
// // //                       child: Padding(
// // //                         padding: EdgeInsets.symmetric(
// // //                           horizontal: 20,
// // //                           vertical: 10,
// // //                         ),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               width: 4,
// // //                               height: 25,
// // //                               decoration: BoxDecoration(
// // //                                 gradient: LinearGradient(
// // //                                   colors: [
// // //                                     Colors.pink,
// // //                                     Colors.redAccent,
// // //                                   ], // Anime-themed gradient
// // //                                   begin: Alignment.topCenter,
// // //                                   end: Alignment.bottomCenter,
// // //                                 ),
// // //                                 borderRadius: BorderRadius.circular(2),
// // //                               ),
// // //                             ),
// // //                             SizedBox(width: 10),
// // //                             Text(
// // //                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
// // //                               style: TextStyle(
// // //                                 fontSize: 24,
// // //                                 fontWeight: FontWeight.bold,
// // //                                 color: Colors.white,
// // //                                 shadows: [
// // //                                   Shadow(
// // //                                     offset: Offset(2, 2),
// // //                                     blurRadius: 4,
// // //                                     color: Colors.black.withOpacity(0.5),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                     SliverPadding(
// // //                       padding: EdgeInsets.symmetric(
// // //                         horizontal: 20,
// // //                         vertical: 10,
// // //                       ),
// // //                       sliver: SliverGrid(
// // //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// // //                           crossAxisCount: 3,
// // //                           childAspectRatio: 0.65,
// // //                           crossAxisSpacing: 12,
// // //                           mainAxisSpacing: 15,
// // //                         ),
// // //                         delegate: SliverChildBuilderDelegate((context, index) {
// // //                           return _filteredAnime.isNotEmpty
// // //                               ? _buildAnimeCard(_filteredAnime[index], index)
// // //                               : Center(
// // //                                   child: Text(
// // //                                     "No results found.",
// // //                                     style: TextStyle(color: Colors.white),
// // //                                   ),
// // //                                 );
// // //                         }, childCount: _filteredAnime.length),
// // //                       ),
// // //                     ),
// // //                     SliverToBoxAdapter(child: SizedBox(height: 30)),
// // //                   ],
// // //                 );
// // //               }
// // //             },
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // class Anime {
// //   final String id;
// //   final String title;
// //   final String imageUrl;
// //   final String rating;
// //   final String year;
// //   final String episodes;
// //   final String genre;
// //   String? videoLink;
// //   final bool isCustom;

// //   Anime({
// //     required this.id,
// //     required this.title,
// //     required this.imageUrl,
// //     required this.rating,
// //     required this.year,
// //     required this.episodes,
// //     required this.genre,
// //     this.videoLink,
// //     this.isCustom = false,
// //   });

// //   factory Anime.fromJson(Map<String, dynamic> json) {
// //     return Anime(
// //       id: json['mal_id'].toString(),
// //       title: json['title_english'] ?? json['title'] ?? 'N/A',
// //       imageUrl: json['images']?['jpg']?['large_image_url'] ?? '',
// //       rating: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// //       year: (json['year'] as int?)?.toString() ?? 'N/A',
// //       episodes: '${json['episodes'] ?? 0} حلقة',
// //       genre: json['genres'] != null && json['genres'].isNotEmpty
// //           ? json['genres'][0]['name'] ?? 'N/A'
// //           : 'N/A',
// //       isCustom: false,
// //     );
// //   }

// //   factory Anime.fromFirestore(DocumentSnapshot doc) {
// //     final data = doc.data() as Map<String, dynamic>;
// //     return Anime(
// //       id: doc.id,
// //       title: data['title'] ?? 'N/A',
// //       imageUrl: data['image'] ?? '',
// //       rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// //       year: (data['year'] as int?)?.toString() ?? 'N/A',
// //       episodes: data['seasons'] ?? 'N/A',
// //       genre: data['genre'] ?? 'N/A',
// //       videoLink: data['videoLink'],
// //       isCustom: true,
// //     );
// //   }
// // }

// // class AnimePage extends StatefulWidget {
// //   @override
// //   _AnimePageState createState() => _AnimePageState();
// // }

// // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// //   PageController _pageController = PageController();
// //   TextEditingController _searchController = TextEditingController();
// //   Timer? _timer;
// //   int _currentPage = 0;
// //   bool _isSearching = false;
// //   bool _showSearchBar = false;
// //   List<Anime> _allAnime = [];
// //   List<Anime> _filteredAnime = [];
// //   late Future<List<Anime>> _animeFuture;
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// //   late AnimationController _animationController;
// //   late Animation<double> _fadeAnimation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _animationController = AnimationController(
// //       duration: Duration(milliseconds: 300),
// //       vsync: this,
// //     );
// //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// //     );
// //     _animationController.forward();
// //     _animeFuture = _fetchAndProcessAnime();
// //     _startAutoScroll();
// //   }

// //   Future<List<Anime>> _fetchAndProcessAnime() async {
// //     List<Anime> combinedAnime = [];

// //     // 1. Fetch from Jikan API
// //     try {
// //       final response = await http.get(
// //         Uri.parse('https://api.jikan.moe/v4/top/anime'),
// //       );
// //       if (response.statusCode == 200) {
// //         final jsonData = json.decode(response.body);
// //         List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
// //           jsonData['data'],
// //         ).map((json) => Anime.fromJson(json)).toList();
// //         combinedAnime.addAll(fetchedAnime);
// //       }
// //     } catch (e) {
// //       print('Error fetching anime: $e');
// //     }

// //     // 2. Fetch custom anime from Firebase
// //     try {
// //       final QuerySnapshot customAnimeSnapshot = await _firestore
// //           .collection('add_anime')
// //           .get();
// //       List<Anime> fetchedCustomAnime = customAnimeSnapshot.docs
// //           .map((doc) => Anime.fromFirestore(doc))
// //           .toList();
// //       combinedAnime.addAll(fetchedCustomAnime);
// //     } catch (e) {
// //       print('Error fetching custom anime: $e');
// //     }

// //     // 3. Fetch video links
// //     final QuerySnapshot linksSnapshot = await _firestore
// //         .collection('anime')
// //         .get();
// //     final Map<String, String> videoLinksMap = {};
// //     for (var doc in linksSnapshot.docs) {
// //       if (doc.data() != null &&
// //           (doc.data() as Map<String, dynamic>).containsKey('link')) {
// //         videoLinksMap[doc.id] =
// //             (doc.data() as Map<String, dynamic>)['link'] as String;
// //       }
// //     }

// //     // 4. Assign video links
// //     for (var anime in combinedAnime) {
// //       if (videoLinksMap.containsKey(anime.id)) {
// //         anime.videoLink = videoLinksMap[anime.id];
// //       }
// //     }

// //     setState(() {
// //       _allAnime = combinedAnime;
// //       _filteredAnime = _allAnime;
// //     });
// //     return combinedAnime;
// //   }

// //   void _startAutoScroll() {
// //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// //       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
// //         if (_currentPage < (_allAnime.take(8).length - 1)) {
// //           _currentPage++;
// //         } else {
// //           _currentPage = 0;
// //         }
// //         _pageController.animateToPage(
// //           _currentPage,
// //           duration: Duration(milliseconds: 800),
// //           curve: Curves.easeInOutCubic,
// //         );
// //       }
// //     });
// //   }

// //   void _searchAnime(String query) {
// //     setState(() {
// //       if (query.isEmpty) {
// //         _filteredAnime = _allAnime;
// //         _isSearching = false;
// //       } else {
// //         _filteredAnime = _allAnime
// //             .where(
// //               (anime) =>
// //                   anime.title.toLowerCase().contains(query.toLowerCase()),
// //             )
// //             .toList();
// //         _isSearching = true;
// //       }
// //     });
// //   }

// //   void _toggleSearch() {
// //     setState(() {
// //       _showSearchBar = !_showSearchBar;
// //       if (!_showSearchBar) {
// //         _searchController.clear();
// //         _searchAnime('');
// //       }
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _timer?.cancel();
// //     _pageController.dispose();
// //     _searchController.dispose();
// //     _animationController.dispose();
// //     super.dispose();
// //   }

// //   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
// //     List<Anime> featuredAnime = animeList.take(8).toList();
// //     if (featuredAnime.isEmpty) return SizedBox.shrink();

// //     return Container(
// //       height: 280,
// //       margin: EdgeInsets.symmetric(vertical: 20),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 20),
// //             child: Row(
// //               children: [
// //                 Container(
// //                   width: 4,
// //                   height: 25,
// //                   decoration: BoxDecoration(
// //                     gradient: LinearGradient(
// //                       colors: [Colors.amber, Colors.orange],
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                     ),
// //                     borderRadius: BorderRadius.circular(2),
// //                   ),
// //                 ),
// //                 SizedBox(width: 10),
// //                 Text(
// //                   'الأنمي المميز',
// //                   style: TextStyle(
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                     shadows: [
// //                       Shadow(
// //                         offset: Offset(2, 2),
// //                         blurRadius: 4,
// //                         color: Colors.black.withOpacity(0.5),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 15),
// //           Expanded(
// //             child: PageView.builder(
// //               controller: _pageController,
// //               itemCount: featuredAnime.length,
// //               onPageChanged: (index) => setState(() => _currentPage = index),
// //               itemBuilder: (context, index) {
// //                 final anime = featuredAnime[index];
// //                 return GestureDetector(
// //                   onTap: () {
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(
// //                         builder: (context) => SeriesDetailsPage(
// //                           title: anime.title,
// //                           image: anime.imageUrl,
// //                           rating: anime.rating,
// //                           year: anime.year,
// //                           seasons: anime.episodes,
// //                           genre: anime.genre,
// //                           videoLink: anime.videoLink,
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                   child: Container(
// //                     margin: EdgeInsets.symmetric(horizontal: 15),
// //                     child: Stack(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(20),
// //                           child: Container(
// //                             width: double.infinity,
// //                             decoration: BoxDecoration(
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black.withOpacity(0.4),
// //                                   spreadRadius: 3,
// //                                   blurRadius: 15,
// //                                   offset: Offset(0, 8),
// //                                 ),
// //                               ],
// //                             ),
// //                             child: anime.imageUrl.isNotEmpty
// //                                 ? Image.network(
// //                                     anime.imageUrl,
// //                                     fit: BoxFit.cover,
// //                                     errorBuilder: (context, error, stackTrace) {
// //                                       return Container(
// //                                         decoration: BoxDecoration(
// //                                           gradient: LinearGradient(
// //                                             colors: [
// //                                               Colors.grey[800]!,
// //                                               Colors.grey[900]!,
// //                                             ],
// //                                             begin: Alignment.topLeft,
// //                                             end: Alignment.bottomRight,
// //                                           ),
// //                                         ),
// //                                         child: Center(
// //                                           child: Icon(
// //                                             Icons.movie_creation_outlined,
// //                                             size: 60,
// //                                             color: Colors.white54,
// //                                           ),
// //                                         ),
// //                                       );
// //                                     },
// //                                   )
// //                                 : Container(
// //                                     decoration: BoxDecoration(
// //                                       gradient: LinearGradient(
// //                                         colors: [
// //                                           Colors.grey[800]!,
// //                                           Colors.grey[900]!,
// //                                         ],
// //                                         begin: Alignment.topLeft,
// //                                         end: Alignment.bottomRight,
// //                                       ),
// //                                     ),
// //                                     child: Center(
// //                                       child: Icon(
// //                                         Icons.movie_creation_outlined,
// //                                         size: 60,
// //                                         color: Colors.white54,
// //                                       ),
// //                                     ),
// //                                   ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(20),
// //                             gradient: LinearGradient(
// //                               begin: Alignment.topCenter,
// //                               end: Alignment.bottomCenter,
// //                               colors: [
// //                                 Colors.transparent,
// //                                 Colors.transparent,
// //                                 Colors.black.withOpacity(0.9),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           bottom: 20,
// //                           left: 20,
// //                           right: 20,
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 anime.title,
// //                                 style: TextStyle(
// //                                   fontSize: 22,
// //                                   fontWeight: FontWeight.bold,
// //                                   color: Colors.white,
// //                                   shadows: [
// //                                     Shadow(
// //                                       offset: Offset(1, 1),
// //                                       blurRadius: 3,
// //                                       color: Colors.black,
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                               SizedBox(height: 8),
// //                               Row(
// //                                 children: [
// //                                   Container(
// //                                     padding: EdgeInsets.symmetric(
// //                                       horizontal: 8,
// //                                       vertical: 4,
// //                                     ),
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.amber,
// //                                       borderRadius: BorderRadius.circular(12),
// //                                     ),
// //                                     child: Row(
// //                                       mainAxisSize: MainAxisSize.min,
// //                                       children: [
// //                                         Icon(
// //                                           Icons.star,
// //                                           color: Colors.black,
// //                                           size: 16,
// //                                         ),
// //                                         SizedBox(width: 4),
// //                                         Text(
// //                                           anime.rating,
// //                                           style: TextStyle(
// //                                             color: Colors.black,
// //                                             fontWeight: FontWeight.bold,
// //                                             fontSize: 12,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                   SizedBox(width: 10),
// //                                   Text(
// //                                     anime.year,
// //                                     style: TextStyle(
// //                                       color: Colors.white70,
// //                                       fontSize: 14,
// //                                     ),
// //                                   ),
// //                                   Spacer(),
// //                                   Container(
// //                                     padding: const EdgeInsets.all(8),
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.black.withOpacity(0.7),
// //                                       shape: BoxShape.circle,
// //                                     ),
// //                                     child:
// //                                         anime.videoLink != null &&
// //                                             anime.videoLink!.isNotEmpty
// //                                         ? const Icon(
// //                                             Icons.check_circle,
// //                                             color: Colors.green,
// //                                             size: 20,
// //                                           )
// //                                         : const Icon(
// //                                             Icons.link_off,
// //                                             color: Colors.red,
// //                                             size: 20,
// //                                           ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           SizedBox(height: 15),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: List.generate(
// //               featuredAnime.length,
// //               (index) => AnimatedContainer(
// //                 duration: Duration(milliseconds: 300),
// //                 margin: EdgeInsets.symmetric(horizontal: 4),
// //                 width: _currentPage == index ? 30 : 10,
// //                 height: 6,
// //                 decoration: BoxDecoration(
// //                   gradient: _currentPage == index
// //                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
// //                       : null,
// //                   color: _currentPage == index ? null : Colors.white38,
// //                   borderRadius: BorderRadius.circular(3),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildAnimeCard(Anime anime, int index) {
// //     return GestureDetector(
// //       onTap: () {
// //         Navigator.push(
// //           context,
// //           MaterialPageRoute(
// //             builder: (context) => SeriesDetailsPage(
// //               title: anime.title,
// //               image: anime.imageUrl,
// //               rating: anime.rating,
// //               year: anime.year,
// //               seasons: anime.episodes,
// //               genre: anime.genre,
// //               videoLink: anime.videoLink,
// //             ),
// //           ),
// //         );
// //       },
// //       child: AnimatedContainer(
// //         duration: Duration(milliseconds: 300 + (index * 50)),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(18),
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.black.withOpacity(0.3),
// //                 spreadRadius: 2,
// //                 blurRadius: 12,
// //                 offset: Offset(0, 6),
// //               ),
// //             ],
// //           ),
// //           child: ClipRRect(
// //             borderRadius: BorderRadius.circular(18),
// //             child: Stack(
// //               children: [
// //                 Container(
// //                   width: double.infinity,
// //                   height: double.infinity,
// //                   child: anime.imageUrl.isNotEmpty
// //                       ? Image.network(
// //                           anime.imageUrl,
// //                           fit: BoxFit.cover,
// //                           errorBuilder: (context, error, stackTrace) {
// //                             return Container(
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   colors: [
// //                                     Colors.grey[800]!,
// //                                     Colors.grey[900]!,
// //                                   ],
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                 ),
// //                               ),
// //                               child: Center(
// //                                 child: Icon(
// //                                   Icons.movie_creation_outlined,
// //                                   size: 40,
// //                                   color: Colors.white54,
// //                                 ),
// //                               ),
// //                             );
// //                           },
// //                         )
// //                       : Container(
// //                           decoration: BoxDecoration(
// //                             gradient: LinearGradient(
// //                               colors: [Colors.grey[800]!, Colors.grey[900]!],
// //                               begin: Alignment.topLeft,
// //                               end: Alignment.bottomRight,
// //                             ),
// //                           ),
// //                           child: Center(
// //                             child: Icon(
// //                               Icons.movie_creation_outlined,
// //                               size: 40,
// //                               color: Colors.white54,
// //                             ),
// //                           ),
// //                         ),
// //                 ),
// //                 Container(
// //                   decoration: BoxDecoration(
// //                     gradient: LinearGradient(
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                       colors: [
// //                         Colors.transparent,
// //                         Colors.transparent,
// //                         Colors.black.withOpacity(0.8),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //                 Positioned(
// //                   top: 8,
// //                   right: 8,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// //                     decoration: BoxDecoration(
// //                       color: Colors.amber,
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Icon(Icons.star, color: Colors.black, size: 12),
// //                         SizedBox(width: 2),
// //                         Text(
// //                           anime.rating,
// //                           style: TextStyle(
// //                             color: Colors.black,
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 10,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //                 Positioned(
// //                   bottom: 8,
// //                   left: 8,
// //                   right: 8,
// //                   child: Text(
// //                     anime.title,
// //                     style: TextStyle(
// //                       fontSize: 13,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       shadows: [
// //                         Shadow(
// //                           offset: Offset(1, 1),
// //                           blurRadius: 2,
// //                           color: Colors.black,
// //                         ),
// //                       ],
// //                     ),
// //                     textAlign: TextAlign.center,
// //                     maxLines: 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                 ),
// //                 Positioned(
// //                   bottom: 8,
// //                   right: 8,
// //                   child: Container(
// //                     padding: const EdgeInsets.all(4),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black54,
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child:
// //                         anime.videoLink != null && anime.videoLink!.isNotEmpty
// //                         ? const Icon(
// //                             Icons.check_circle,
// //                             color: Colors.green,
// //                             size: 20,
// //                           )
// //                         : const Icon(
// //                             Icons.link_off,
// //                             color: Colors.red,
// //                             size: 20,
// //                           ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color(0xFF8B4513), // Same brown color as movies page
// //         elevation: 0,
// //         title: Text(
// //           'مكتبة الأنمي',
// //           style: TextStyle(
// //             fontSize: 24,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.white,
// //           ),
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           IconButton(
// //             onPressed: _toggleSearch,
// //             icon: Icon(
// //               _showSearchBar ? Icons.close : Icons.search,
// //               color: Colors.white,
// //               size: 28,
// //             ),
// //           ),
// //         ],
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [
// //               Color(0xFF8B4513),
// //               Color(0xFF654321),
// //               Color(0xFF2F1B14),
// //             ], // Same gradient as movies page
// //           ),
// //         ),
// //         child: FadeTransition(
// //           opacity: _fadeAnimation,
// //           child: FutureBuilder<List<Anime>>(
// //             future: _animeFuture,
// //             builder: (context, snapshot) {
// //               if (snapshot.connectionState == ConnectionState.waiting) {
// //                 return Center(
// //                   child: CircularProgressIndicator(color: Colors.amber),
// //                 );
// //               } else if (snapshot.hasError) {
// //                 return Center(
// //                   child: Text(
// //                     "Error: ${snapshot.error}",
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 );
// //               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                 return Center(
// //                   child: Text(
// //                     "No anime found.",
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 );
// //               } else {
// //                 return CustomScrollView(
// //                   slivers: [
// //                     if (_showSearchBar)
// //                       SliverToBoxAdapter(
// //                         child: Container(
// //                           padding: EdgeInsets.all(20),
// //                           child: Container(
// //                             decoration: BoxDecoration(
// //                               color: Colors.white.withOpacity(0.1),
// //                               borderRadius: BorderRadius.circular(25),
// //                               border: Border.all(
// //                                 color: Colors.white.withOpacity(0.2),
// //                                 width: 1,
// //                               ),
// //                             ),
// //                             child: TextField(
// //                               controller: _searchController,
// //                               onChanged: _searchAnime,
// //                               style: TextStyle(color: Colors.white),
// //                               autofocus: true,
// //                               decoration: InputDecoration(
// //                                 hintText: 'ابحث عن أنمي...',
// //                                 hintStyle: TextStyle(color: Colors.white60),
// //                                 prefixIcon: Icon(
// //                                   Icons.search,
// //                                   color: Colors.white70,
// //                                 ),
// //                                 border: InputBorder.none,
// //                                 contentPadding: EdgeInsets.symmetric(
// //                                   horizontal: 20,
// //                                   vertical: 15,
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     if (!_isSearching)
// //                       SliverToBoxAdapter(
// //                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
// //                       ),
// //                     SliverToBoxAdapter(
// //                       child: Padding(
// //                         padding: EdgeInsets.symmetric(
// //                           horizontal: 20,
// //                           vertical: 10,
// //                         ),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               width: 4,
// //                               height: 25,
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   colors: [Colors.red, Colors.orange],
// //                                   begin: Alignment.topCenter,
// //                                   end: Alignment.bottomCenter,
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(2),
// //                               ),
// //                             ),
// //                             SizedBox(width: 10),
// //                             Text(
// //                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
// //                               style: TextStyle(
// //                                 fontSize: 24,
// //                                 fontWeight: FontWeight.bold,
// //                                 color: Colors.white,
// //                                 shadows: [
// //                                   Shadow(
// //                                     offset: Offset(2, 2),
// //                                     blurRadius: 4,
// //                                     color: Colors.black.withOpacity(0.5),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     SliverPadding(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: 20,
// //                         vertical: 10,
// //                       ),
// //                       sliver: SliverGrid(
// //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                           crossAxisCount: 3,
// //                           childAspectRatio: 0.65,
// //                           crossAxisSpacing: 12,
// //                           mainAxisSpacing: 15,
// //                         ),
// //                         delegate: SliverChildBuilderDelegate((context, index) {
// //                           return _filteredAnime.isNotEmpty
// //                               ? _buildAnimeCard(_filteredAnime[index], index)
// //                               : Center(
// //                                   child: Text(
// //                                     "No results found.",
// //                                     style: TextStyle(color: Colors.white),
// //                                   ),
// //                                 );
// //                         }, childCount: _filteredAnime.length),
// //                       ),
// //                     ),
// //                     SliverToBoxAdapter(child: SizedBox(height: 30)),
// //                   ],
// //                 );
// //               }
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // // }
// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// // class Anime {
// //   final String id;
// //   final String title;
// //   final String imageUrl;
// //   final String rating;
// //   final String year;
// //   final String episodes;
// //   final String genre;
// //   String? videoLink;
// //   final bool isCustom;

// //   Anime({
// //     required this.id,
// //     required this.title,
// //     required this.imageUrl,
// //     required this.rating,
// //     required this.year,
// //     required this.episodes,
// //     required this.genre,
// //     this.videoLink,
// //     this.isCustom = false,
// //   });

// //   factory Anime.fromJson(Map<String, dynamic> json) {
// //     return Anime(
// //       id: json['mal_id'].toString(),
// //       title: json['title_english'] ?? json['title'] ?? 'N/A',
// //       imageUrl: json['images']?['jpg']?['large_image_url'] ?? '',
// //       rating: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// //       year: (json['year'] as int?)?.toString() ?? 'N/A',
// //       episodes: '${json['episodes'] ?? 0} حلقة',
// //       genre: json['genres'] != null && json['genres'].isNotEmpty
// //           ? json['genres'][0]['name'] ?? 'N/A'
// //           : 'N/A',
// //       isCustom: false,
// //     );
// //   }

// //   factory Anime.fromFirestore(DocumentSnapshot doc) {
// //     final data = doc.data() as Map<String, dynamic>;
// //     return Anime(
// //       id: doc.id,
// //       title: data['title'] ?? 'N/A',
// //       imageUrl: data['image'] ?? '',
// //       rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
// //       year: (data['year'] as int?)?.toString() ?? 'N/A',
// //       episodes: data['seasons'] ?? 'N/A',
// //       genre: data['genre'] ?? 'N/A',
// //       videoLink: data['videoLink'],
// //       isCustom: true,
// //     );
// //   }
// // }

// // class AnimePage extends StatefulWidget {
// //   @override
// //   _AnimePageState createState() => _AnimePageState();
// // }

// // class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
// //   PageController _pageController = PageController();
// //   TextEditingController _searchController = TextEditingController();
// //   Timer? _timer;
// //   int _currentPage = 0;
// //   bool _isSearching = false;
// //   bool _showSearchBar = false;
// //   List<Anime> _allAnime = [];
// //   List<Anime> _filteredAnime = [];
// //   late Future<List<Anime>> _animeFuture;
// //   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
// //   late AnimationController _animationController;
// //   late Animation<double> _fadeAnimation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _animationController = AnimationController(
// //       duration: Duration(milliseconds: 300),
// //       vsync: this,
// //     );
// //     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
// //       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
// //     );
// //     _animationController.forward();
// //     _animeFuture = _fetchAndProcessAnime();
// //     _startAutoScroll();
// //   }

// //   Future<List<Anime>> _fetchAndProcessAnime() async {
// //     List<Anime> combinedAnime = [];
// //     try {
// //       final QuerySnapshot customAnimeSnapshot = await _firestore
// //           .collection('add_anime')
// //           .orderBy('timestamp', descending: true) // الأحدث أولاً
// //           .get();
// //       List<Anime> fetchedCustomAnime = customAnimeSnapshot.docs
// //           .map((doc) => Anime.fromFirestore(doc))
// //           .toList();
// //       combinedAnime.addAll(fetchedCustomAnime);
// //     } catch (e) {
// //       print('Error fetching custom anime: $e');
// //     }

// //     // 1. Fetch from Jikan API
// //     try {
// //       final response = await http.get(
// //         Uri.parse('https://api.jikan.moe/v4/top/anime'),
// //       );
// //       if (response.statusCode == 200) {
// //         final jsonData = json.decode(response.body);
// //         List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
// //           jsonData['data'],
// //         ).map((json) => Anime.fromJson(json)).toList();
// //         combinedAnime.addAll(fetchedAnime);
// //       }
// //     } catch (e) {
// //       print('Error fetching anime: $e');
// //     }

// //     // 2. Fetch custom anime from Firebase

// //     // 3. Fetch video links
// //     final QuerySnapshot linksSnapshot = await _firestore
// //         .collection('anime')
// //         .get();
// //     final Map<String, String> videoLinksMap = {};
// //     for (var doc in linksSnapshot.docs) {
// //       if (doc.data() != null &&
// //           (doc.data() as Map<String, dynamic>).containsKey('link')) {
// //         videoLinksMap[doc.id] =
// //             (doc.data() as Map<String, dynamic>)['link'] as String;
// //       }
// //     }

// //     // 4. Assign video links
// //     for (var anime in combinedAnime) {
// //       if (videoLinksMap.containsKey(anime.id)) {
// //         anime.videoLink = videoLinksMap[anime.id];
// //       }
// //     }

// //     setState(() {
// //       _allAnime = combinedAnime;
// //       _filteredAnime = _allAnime;
// //     });
// //     return combinedAnime;
// //   }

// //   void _startAutoScroll() {
// //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// //       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
// //         if (_currentPage < (_allAnime.take(8).length - 1)) {
// //           _currentPage++;
// //         } else {
// //           _currentPage = 0;
// //         }
// //         _pageController.animateToPage(
// //           _currentPage,
// //           duration: Duration(milliseconds: 800),
// //           curve: Curves.easeInOutCubic,
// //         );
// //       }
// //     });
// //   }

// //   void _searchAnime(String query) {
// //     setState(() {
// //       if (query.isEmpty) {
// //         _filteredAnime = _allAnime;
// //         _isSearching = false;
// //       } else {
// //         _filteredAnime = _allAnime
// //             .where(
// //               (anime) =>
// //                   anime.title.toLowerCase().contains(query.toLowerCase()),
// //             )
// //             .toList();
// //         _isSearching = true;
// //       }
// //     });
// //   }

// //   void _toggleSearch() {
// //     setState(() {
// //       _showSearchBar = !_showSearchBar;
// //       if (!_showSearchBar) {
// //         _searchController.clear();
// //         _searchAnime('');
// //       }
// //     });
// //   }

// //   // <CHANGE> إضافة دالة للانتقال إلى تفاصيل الأنمي مع تمرير animeId
// //   void _navigateToAnimeDetails(Anime anime) {
// //     Navigator.push(
// //       context,
// //       MaterialPageRoute(
// //         builder: (context) => SeriesDetailsPage(
// //           seriesId: anime.id, // إضافة معرف الأنمي
// //           title: anime.title,
// //           image: anime.imageUrl,
// //           rating: anime.rating,
// //           year: anime.year,
// //           seasons: anime.episodes,
// //           genre: anime.genre,
// //           videoLink: anime.videoLink,
// //           contentType: ContentType.anime,
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _timer?.cancel();
// //     _pageController.dispose();
// //     _searchController.dispose();
// //     _animationController.dispose();
// //     super.dispose();
// //   }

// //   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
// //     List<Anime> featuredAnime = animeList.take(8).toList();
// //     if (featuredAnime.isEmpty) return SizedBox.shrink();

// //     return Container(
// //       height: 280,
// //       margin: EdgeInsets.symmetric(vertical: 20),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Padding(
// //             padding: EdgeInsets.symmetric(horizontal: 20),
// //             child: Row(
// //               children: [
// //                 Container(
// //                   width: 4,
// //                   height: 25,
// //                   decoration: BoxDecoration(
// //                     gradient: LinearGradient(
// //                       colors: [Colors.amber, Colors.orange],
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                     ),
// //                     borderRadius: BorderRadius.circular(2),
// //                   ),
// //                 ),
// //                 SizedBox(width: 10),
// //                 Text(
// //                   'الأنمي المميز',
// //                   style: TextStyle(
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                     shadows: [
// //                       Shadow(
// //                         offset: Offset(2, 2),
// //                         blurRadius: 4,
// //                         color: Colors.black.withOpacity(0.5),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //           SizedBox(height: 15),
// //           Expanded(
// //             child: PageView.builder(
// //               controller: _pageController,
// //               itemCount: featuredAnime.length,
// //               onPageChanged: (index) => setState(() => _currentPage = index),
// //               itemBuilder: (context, index) {
// //                 final anime = featuredAnime[index];
// //                 return GestureDetector(
// //                   // <CHANGE> استخدام الدالة المحدثة لتمرير animeId
// //                   onTap: () => _navigateToAnimeDetails(anime),
// //                   child: Container(
// //                     margin: EdgeInsets.symmetric(horizontal: 15),
// //                     child: Stack(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(20),
// //                           child: Container(
// //                             width: double.infinity,
// //                             decoration: BoxDecoration(
// //                               boxShadow: [
// //                                 BoxShadow(
// //                                   color: Colors.black.withOpacity(0.4),
// //                                   spreadRadius: 3,
// //                                   blurRadius: 15,
// //                                   offset: Offset(0, 8),
// //                                 ),
// //                               ],
// //                             ),
// //                             child: anime.imageUrl.isNotEmpty
// //                                 ? Image.network(
// //                                     anime.imageUrl,
// //                                     fit: BoxFit.cover,
// //                                     errorBuilder: (context, error, stackTrace) {
// //                                       return Container(
// //                                         decoration: BoxDecoration(
// //                                           gradient: LinearGradient(
// //                                             colors: [
// //                                               Colors.grey[800]!,
// //                                               Colors.grey[900]!,
// //                                             ],
// //                                             begin: Alignment.topLeft,
// //                                             end: Alignment.bottomRight,
// //                                           ),
// //                                         ),
// //                                         child: Center(
// //                                           child: Icon(
// //                                             Icons.movie_creation_outlined,
// //                                             size: 60,
// //                                             color: Colors.white54,
// //                                           ),
// //                                         ),
// //                                       );
// //                                     },
// //                                   )
// //                                 : Container(
// //                                     decoration: BoxDecoration(
// //                                       gradient: LinearGradient(
// //                                         colors: [
// //                                           Colors.grey[800]!,
// //                                           Colors.grey[900]!,
// //                                         ],
// //                                         begin: Alignment.topLeft,
// //                                         end: Alignment.bottomRight,
// //                                       ),
// //                                     ),
// //                                     child: Center(
// //                                       child: Icon(
// //                                         Icons.movie_creation_outlined,
// //                                         size: 60,
// //                                         color: Colors.white54,
// //                                       ),
// //                                     ),
// //                                   ),
// //                           ),
// //                         ),
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(20),
// //                             gradient: LinearGradient(
// //                               begin: Alignment.topCenter,
// //                               end: Alignment.bottomCenter,
// //                               colors: [
// //                                 Colors.transparent,
// //                                 Colors.transparent,
// //                                 Colors.black.withOpacity(0.9),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                         Positioned(
// //                           bottom: 20,
// //                           left: 20,
// //                           right: 20,
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Text(
// //                                 anime.title,
// //                                 style: TextStyle(
// //                                   fontSize: 22,
// //                                   fontWeight: FontWeight.bold,
// //                                   color: Colors.white,
// //                                   shadows: [
// //                                     Shadow(
// //                                       offset: Offset(1, 1),
// //                                       blurRadius: 3,
// //                                       color: Colors.black,
// //                                     ),
// //                                   ],
// //                                 ),
// //                                 maxLines: 2,
// //                                 overflow: TextOverflow.ellipsis,
// //                               ),
// //                               SizedBox(height: 8),
// //                               Row(
// //                                 children: [
// //                                   Container(
// //                                     padding: EdgeInsets.symmetric(
// //                                       horizontal: 8,
// //                                       vertical: 4,
// //                                     ),
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.amber,
// //                                       borderRadius: BorderRadius.circular(12),
// //                                     ),
// //                                     child: Row(
// //                                       mainAxisSize: MainAxisSize.min,
// //                                       children: [
// //                                         Icon(
// //                                           Icons.star,
// //                                           color: Colors.black,
// //                                           size: 16,
// //                                         ),
// //                                         SizedBox(width: 4),
// //                                         Text(
// //                                           anime.rating,
// //                                           style: TextStyle(
// //                                             color: Colors.black,
// //                                             fontWeight: FontWeight.bold,
// //                                             fontSize: 12,
// //                                           ),
// //                                         ),
// //                                       ],
// //                                     ),
// //                                   ),
// //                                   SizedBox(width: 10),
// //                                   Text(
// //                                     anime.year,
// //                                     style: TextStyle(
// //                                       color: Colors.white70,
// //                                       fontSize: 14,
// //                                     ),
// //                                   ),
// //                                   Spacer(),
// //                                   Container(
// //                                     padding: const EdgeInsets.all(8),
// //                                     decoration: BoxDecoration(
// //                                       color: Colors.black.withOpacity(0.7),
// //                                       shape: BoxShape.circle,
// //                                     ),
// //                                     child:
// //                                         anime.videoLink != null &&
// //                                             anime.videoLink!.isNotEmpty
// //                                         ? const Icon(
// //                                             Icons.check_circle,
// //                                             color: Colors.green,
// //                                             size: 20,
// //                                           )
// //                                         : const Icon(
// //                                             Icons.link_off,
// //                                             color: Colors.red,
// //                                             size: 20,
// //                                           ),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //           SizedBox(height: 15),
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: List.generate(
// //               featuredAnime.length,
// //               (index) => AnimatedContainer(
// //                 duration: Duration(milliseconds: 300),
// //                 margin: EdgeInsets.symmetric(horizontal: 4),
// //                 width: _currentPage == index ? 30 : 10,
// //                 height: 6,
// //                 decoration: BoxDecoration(
// //                   gradient: _currentPage == index
// //                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
// //                       : null,
// //                   color: _currentPage == index ? null : Colors.white38,
// //                   borderRadius: BorderRadius.circular(3),
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _buildAnimeCard(Anime anime, int index) {
// //     return GestureDetector(
// //       // <CHANGE> استخدام الدالة المحدثة لتمرير animeId
// //       onTap: () => _navigateToAnimeDetails(anime),
// //       child: AnimatedContainer(
// //         duration: Duration(milliseconds: 300 + (index * 50)),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             borderRadius: BorderRadius.circular(18),
// //             boxShadow: [
// //               BoxShadow(
// //                 color: Colors.black.withOpacity(0.3),
// //                 spreadRadius: 2,
// //                 blurRadius: 12,
// //                 offset: Offset(0, 6),
// //               ),
// //             ],
// //           ),
// //           child: ClipRRect(
// //             borderRadius: BorderRadius.circular(18),
// //             child: Stack(
// //               children: [
// //                 Container(
// //                   width: double.infinity,
// //                   height: double.infinity,
// //                   child: anime.imageUrl.isNotEmpty
// //                       ? Image.network(
// //                           anime.imageUrl,
// //                           fit: BoxFit.cover,
// //                           errorBuilder: (context, error, stackTrace) {
// //                             return Container(
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   colors: [
// //                                     Colors.grey[800]!,
// //                                     Colors.grey[900]!,
// //                                   ],
// //                                   begin: Alignment.topLeft,
// //                                   end: Alignment.bottomRight,
// //                                 ),
// //                               ),
// //                               child: Center(
// //                                 child: Icon(
// //                                   Icons.movie_creation_outlined,
// //                                   size: 40,
// //                                   color: Colors.white54,
// //                                 ),
// //                               ),
// //                             );
// //                           },
// //                         )
// //                       : Container(
// //                           decoration: BoxDecoration(
// //                             gradient: LinearGradient(
// //                               colors: [Colors.grey[800]!, Colors.grey[900]!],
// //                               begin: Alignment.topLeft,
// //                               end: Alignment.bottomRight,
// //                             ),
// //                           ),
// //                           child: Center(
// //                             child: Icon(
// //                               Icons.movie_creation_outlined,
// //                               size: 40,
// //                               color: Colors.white54,
// //                             ),
// //                           ),
// //                         ),
// //                 ),
// //                 Container(
// //                   decoration: BoxDecoration(
// //                     gradient: LinearGradient(
// //                       begin: Alignment.topCenter,
// //                       end: Alignment.bottomCenter,
// //                       colors: [
// //                         Colors.transparent,
// //                         Colors.transparent,
// //                         Colors.black.withOpacity(0.8),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //                 Positioned(
// //                   top: 8,
// //                   right: 8,
// //                   child: Container(
// //                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
// //                     decoration: BoxDecoration(
// //                       color: Colors.amber,
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child: Row(
// //                       mainAxisSize: MainAxisSize.min,
// //                       children: [
// //                         Icon(Icons.star, color: Colors.black, size: 12),
// //                         SizedBox(width: 2),
// //                         Text(
// //                           anime.rating,
// //                           style: TextStyle(
// //                             color: Colors.black,
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 10,
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //                 Positioned(
// //                   bottom: 8,
// //                   left: 8,
// //                   right: 8,
// //                   child: Text(
// //                     anime.title,
// //                     style: TextStyle(
// //                       fontSize: 13,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       shadows: [
// //                         Shadow(
// //                           offset: Offset(1, 1),
// //                           blurRadius: 2,
// //                           color: Colors.black,
// //                         ),
// //                       ],
// //                     ),
// //                     textAlign: TextAlign.center,
// //                     maxLines: 2,
// //                     overflow: TextOverflow.ellipsis,
// //                   ),
// //                 ),
// //                 Positioned(
// //                   bottom: 8,
// //                   right: 8,
// //                   child: Container(
// //                     padding: const EdgeInsets.all(4),
// //                     decoration: BoxDecoration(
// //                       color: Colors.black54,
// //                       borderRadius: BorderRadius.circular(8),
// //                     ),
// //                     child:
// //                         anime.videoLink != null && anime.videoLink!.isNotEmpty
// //                         ? const Icon(
// //                             Icons.check_circle,
// //                             color: Colors.green,
// //                             size: 20,
// //                           )
// //                         : const Icon(
// //                             Icons.link_off,
// //                             color: Colors.red,
// //                             size: 20,
// //                           ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Color(0xFF8B4513), // Same brown color as movies page
// //         elevation: 0,
// //         title: Text(
// //           'مكتبة الأنمي',
// //           style: TextStyle(
// //             fontSize: 24,
// //             fontWeight: FontWeight.bold,
// //             color: Colors.white,
// //           ),
// //         ),
// //         centerTitle: true,
// //         actions: [
// //           IconButton(
// //             onPressed: _toggleSearch,
// //             icon: Icon(
// //               _showSearchBar ? Icons.close : Icons.search,
// //               color: Colors.white,
// //               size: 28,
// //             ),
// //           ),
// //         ],
// //       ),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [
// //               Color(0xFF8B4513),
// //               Color(0xFF654321),
// //               Color(0xFF2F1B14),
// //             ], // Same gradient as movies page
// //           ),
// //         ),
// //         child: FadeTransition(
// //           opacity: _fadeAnimation,
// //           child: FutureBuilder<List<Anime>>(
// //             future: _animeFuture,
// //             builder: (context, snapshot) {
// //               if (snapshot.connectionState == ConnectionState.waiting) {
// //                 return Center(
// //                   child: CircularProgressIndicator(color: Colors.amber),
// //                 );
// //               } else if (snapshot.hasError) {
// //                 return Center(
// //                   child: Text(
// //                     "Error: ${snapshot.error}",
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 );
// //               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
// //                 return Center(
// //                   child: Text(
// //                     "No anime found.",
// //                     style: TextStyle(color: Colors.white),
// //                   ),
// //                 );
// //               } else {
// //                 return CustomScrollView(
// //                   slivers: [
// //                     if (_showSearchBar)
// //                       SliverToBoxAdapter(
// //                         child: Container(
// //                           padding: EdgeInsets.all(20),
// //                           child: Container(
// //                             decoration: BoxDecoration(
// //                               color: Colors.white.withOpacity(0.1),
// //                               borderRadius: BorderRadius.circular(25),
// //                               border: Border.all(
// //                                 color: Colors.white.withOpacity(0.2),
// //                                 width: 1,
// //                               ),
// //                             ),
// //                             child: TextField(
// //                               controller: _searchController,
// //                               onChanged: _searchAnime,
// //                               style: TextStyle(color: Colors.white),
// //                               autofocus: true,
// //                               decoration: InputDecoration(
// //                                 hintText: 'ابحث عن أنمي...',
// //                                 hintStyle: TextStyle(color: Colors.white60),
// //                                 prefixIcon: Icon(
// //                                   Icons.search,
// //                                   color: Colors.white70,
// //                                 ),
// //                                 border: InputBorder.none,
// //                                 contentPadding: EdgeInsets.symmetric(
// //                                   horizontal: 20,
// //                                   vertical: 15,
// //                                 ),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ),
// //                     if (!_isSearching)
// //                       SliverToBoxAdapter(
// //                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
// //                       ),
// //                     SliverToBoxAdapter(
// //                       child: Padding(
// //                         padding: EdgeInsets.symmetric(
// //                           horizontal: 20,
// //                           vertical: 10,
// //                         ),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               width: 4,
// //                               height: 25,
// //                               decoration: BoxDecoration(
// //                                 gradient: LinearGradient(
// //                                   colors: [Colors.red, Colors.orange],
// //                                   begin: Alignment.topCenter,
// //                                   end: Alignment.bottomCenter,
// //                                 ),
// //                                 borderRadius: BorderRadius.circular(2),
// //                               ),
// //                             ),
// //                             SizedBox(width: 10),
// //                             Text(
// //                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
// //                               style: TextStyle(
// //                                 fontSize: 24,
// //                                 fontWeight: FontWeight.bold,
// //                                 color: Colors.white,
// //                                 shadows: [
// //                                   Shadow(
// //                                     offset: Offset(2, 2),
// //                                     blurRadius: 4,
// //                                     color: Colors.black.withOpacity(0.5),
// //                                   ),
// //                                 ],
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                     SliverPadding(
// //                       padding: EdgeInsets.symmetric(
// //                         horizontal: 20,
// //                         vertical: 10,
// //                       ),
// //                       sliver: SliverGrid(
// //                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// //                           crossAxisCount: 3,
// //                           childAspectRatio: 0.65,
// //                           crossAxisSpacing: 12,
// //                           mainAxisSpacing: 15,
// //                         ),
// //                         delegate: SliverChildBuilderDelegate((context, index) {
// //                           return _filteredAnime.isNotEmpty
// //                               ? _buildAnimeCard(_filteredAnime[index], index)
// //                               : Center(
// //                                   child: Text(
// //                                     "No results found.",
// //                                     style: TextStyle(color: Colors.white),
// //                                   ),
// //                                 );
// //                         }, childCount: _filteredAnime.length),
// //                       ),
// //                     ),
// //                     SliverToBoxAdapter(child: SizedBox(height: 30)),
// //                   ],
// //                 );
// //               }
// //             },
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:korrrrrrrr/serias_screens/series_detiels.dart';

// class Anime {
//   final String id;
//   final String title;
//   final String imageUrl;
//   final String rating;
//   final String year;
//   final String episodes;
//   final String genre;
//   String? videoLink;
//   final bool isCustom;
//   // <CHANGE> إضافة حقول جديدة للحلقات
//   int? latestEpisodeNumber;
//   DateTime? latestEpisodeDate;
//   bool hasNewEpisodes;

//   Anime({
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//     required this.rating,
//     required this.year,
//     required this.episodes,
//     required this.genre,
//     this.videoLink,
//     this.isCustom = false,
//     // <CHANGE> إضافة المعاملات الجديدة
//     this.latestEpisodeNumber,
//     this.latestEpisodeDate,
//     this.hasNewEpisodes = false,
//   });

//   // ... existing factory methods ...

//   factory Anime.fromJson(Map<String, dynamic> json) {
//     return Anime(
//       id: json['mal_id'].toString(),
//       title: json['title_english'] ?? json['title'] ?? 'N/A',
//       imageUrl: json['images']?['jpg']?['large_image_url'] ?? '',
//       rating: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: (json['year'] as int?)?.toString() ?? 'N/A',
//       episodes: '${json['episodes'] ?? 0} حلقة',
//       genre: json['genres'] != null && json['genres'].isNotEmpty
//           ? json['genres'][0]['name'] ?? 'N/A'
//           : 'N/A',
//       isCustom: false,
//     );
//   }

//   factory Anime.fromFirestore(DocumentSnapshot doc) {
//     final data = doc.data() as Map<String, dynamic>;
//     return Anime(
//       id: doc.id,
//       title: data['title'] ?? 'N/A',
//       imageUrl: data['image'] ?? '',
//       rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
//       year: (data['year'] as int?)?.toString() ?? 'N/A',
//       episodes: data['seasons'] ?? 'N/A',
//       genre: data['genre'] ?? 'N/A',
//       videoLink: data['videoLink'],
//       isCustom: true,
//     );
//   }
// }

// class AnimePage extends StatefulWidget {
//   @override
//   _AnimePageState createState() => _AnimePageState();
// }

// class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
//   // ... existing variables ...
//   PageController _pageController = PageController();
//   TextEditingController _searchController = TextEditingController();
//   Timer? _timer;
//   // <CHANGE> إضافة timer للتحديث التلقائي
//   Timer? _refreshTimer;
//   int _currentPage = 0;
//   bool _isSearching = false;
//   bool _showSearchBar = false;
//   List<Anime> _allAnime = [];
//   List<Anime> _filteredAnime = [];
//   late Future<List<Anime>> _animeFuture;
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: Duration(milliseconds: 300),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//     _animationController.forward();
//     _animeFuture = _fetchAndProcessAnime();
//     _startAutoScroll();
//     // <CHANGE> إضافة تحديث تلقائي كل 5 ثوانٍ
//     _refreshAnimeData();
//   }

//   // <CHANGE> إضافة دالة التحديث التلقائي
//   // void _startAutoRefresh() {
//   //   _refreshTimer = Timer.periodic(Duration(seconds: 5), (timer) {
//   //     _refreshAnimeData();
//   //   });
//   // }

//   // <CHANGE> إضافة دالة تحديث البيانات
//   void _refreshAnimeData() {
//     setState(() {
//       _animeFuture = _fetchAndProcessAnime();
//     });
//   }

//   // <CHANGE> تحديث دالة جلب الأنمي لتشمل الحلقات
//   Future<List<Anime>> _fetchAndProcessAnime() async {
//     List<Anime> combinedAnime = [];
//     try {
//       final QuerySnapshot customAnimeSnapshot = await _firestore
//           .collection('add_anime')
//           .get();

//       List<Anime> fetchedCustomAnime = [];

//       // <CHANGE> جلب الحلقات لكل أنمي وترتيبها
//       for (var doc in customAnimeSnapshot.docs) {
//         Anime anime = Anime.fromFirestore(doc);

//         // جلب آخر حلقة لهذا الأنمي
//         final QuerySnapshot episodesSnapshot = await _firestore
//             .collection('add_anime')
//             .doc(doc.id)
//             .collection('episodes')
//             .orderBy('createdAt', descending: true)
//             .limit(1)
//             .get();

//         if (episodesSnapshot.docs.isNotEmpty) {
//           final latestEpisodeDoc = episodesSnapshot.docs.first;
//           final episodeData = latestEpisodeDoc.data() as Map<String, dynamic>;

//           anime.latestEpisodeNumber = episodeData['episodeNumber'] ?? 0;
//           anime.latestEpisodeDate = (episodeData['createdAt'] as Timestamp)
//               .toDate();

//           // تحديد إذا كانت الحلقة جديدة (خلال آخر 7 أيام)
//           final now = DateTime.now();
//           final daysDifference = now
//               .difference(anime.latestEpisodeDate!)
//               .inDays;
//           anime.hasNewEpisodes = daysDifference <= 7;
//         }

//         fetchedCustomAnime.add(anime);
//       }

//       // <CHANGE> ترتيب الأنمي: الأنمي مع الحلقات الجديدة أولاً، ثم حسب تاريخ آخر حلقة
//       fetchedCustomAnime.sort((a, b) {
//         // الأنمي مع الحلقات الجديدة أولاً
//         if (a.hasNewEpisodes && !b.hasNewEpisodes) return -1;
//         if (!a.hasNewEpisodes && b.hasNewEpisodes) return 1;

//         // إذا كان كلاهما له حلقات جديدة أو لا، رتب حسب تاريخ آخر حلقة
//         if (a.latestEpisodeDate != null && b.latestEpisodeDate != null) {
//           return b.latestEpisodeDate!.compareTo(a.latestEpisodeDate!);
//         }

//         // إذا لم يكن لديهما حلقات، رتب حسب timestamp الأصلي
//         return 0;
//       });

//       combinedAnime.addAll(fetchedCustomAnime);
//     } catch (e) {
//       print('Error fetching custom anime: $e');
//     }

//     // ... existing Jikan API code ...
//     try {
//       final response = await http.get(
//         Uri.parse('https://api.jikan.moe/v4/top/anime'),
//       );
//       if (response.statusCode == 200) {
//         final jsonData = json.decode(response.body);
//         List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
//           jsonData['data'],
//         ).map((json) => Anime.fromJson(json)).toList();
//         combinedAnime.addAll(fetchedAnime);
//       }
//     } catch (e) {
//       print('Error fetching anime: $e');
//     }

//     // ... existing video links code ...
//     final QuerySnapshot linksSnapshot = await _firestore
//         .collection('anime')
//         .get();
//     final Map<String, String> videoLinksMap = {};
//     for (var doc in linksSnapshot.docs) {
//       if (doc.data() != null &&
//           (doc.data() as Map<String, dynamic>).containsKey('link')) {
//         videoLinksMap[doc.id] =
//             (doc.data() as Map<String, dynamic>)['link'] as String;
//       }
//     }

//     for (var anime in combinedAnime) {
//       if (videoLinksMap.containsKey(anime.id)) {
//         anime.videoLink = videoLinksMap[anime.id];
//       }
//     }

//     setState(() {
//       _allAnime = combinedAnime;
//       _filteredAnime = _allAnime;
//     });
//     return combinedAnime;
//   }

//   // ... existing methods ...

//   @override
//   void dispose() {
//     _timer?.cancel();
//     // <CHANGE> إلغاء timer التحديث التلقائي
//     _refreshTimer?.cancel();
//     _pageController.dispose();
//     _searchController.dispose();
//     _animationController.dispose();
//     super.dispose();
//   }

//   // ... existing _buildFeaturedAnimeCarousel method ...

//   // <CHANGE> تحديث بناء كارت الأنمي لعرض رقم الحلقة
//   Widget _buildAnimeCard(Anime anime, int index) {
//     return GestureDetector(
//       onTap: () => _navigateToAnimeDetails(anime),
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 300 + (index * 50)),
//         child: Container(
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.3),
//                 spreadRadius: 2,
//                 blurRadius: 12,
//                 offset: Offset(0, 6),
//               ),
//             ],
//           ),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(18),
//             child: Stack(
//               children: [
//                 // ... existing image container ...
//                 Container(
//                   width: double.infinity,
//                   height: double.infinity,
//                   child: anime.imageUrl.isNotEmpty
//                       ? Image.network(
//                           anime.imageUrl,
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) {
//                             return Container(
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [
//                                     Colors.grey[800]!,
//                                     Colors.grey[900]!,
//                                   ],
//                                   begin: Alignment.topLeft,
//                                   end: Alignment.bottomRight,
//                                 ),
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.movie_creation_outlined,
//                                   size: 40,
//                                   color: Colors.white54,
//                                 ),
//                               ),
//                             );
//                           },
//                         )
//                       : Container(
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               colors: [Colors.grey[800]!, Colors.grey[900]!],
//                               begin: Alignment.topLeft,
//                               end: Alignment.bottomRight,
//                             ),
//                           ),
//                           child: Center(
//                             child: Icon(
//                               Icons.movie_creation_outlined,
//                               size: 40,
//                               color: Colors.white54,
//                             ),
//                           ),
//                         ),
//                 ),
//                 // ... existing gradient overlay ...
//                 Container(
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         Colors.transparent,
//                         Colors.transparent,
//                         Colors.black.withOpacity(0.8),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // <CHANGE> إضافة مؤشر الحلقة الجديدة
//                 if (anime.latestEpisodeNumber != null)
//                   Positioned(
//                     top: 8,
//                     left: 8,
//                     child: Container(
//                       padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
//                       decoration: BoxDecoration(
//                         color: anime.hasNewEpisodes ? Colors.red : Colors.blue,
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black.withOpacity(0.3),
//                             blurRadius: 4,
//                             offset: Offset(0, 2),
//                           ),
//                         ],
//                       ),
//                       child: Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           if (anime.hasNewEpisodes) ...[
//                             Icon(
//                               Icons.fiber_new,
//                               color: Colors.white,
//                               size: 12,
//                             ),
//                             SizedBox(width: 2),
//                           ],
//                           Text(
//                             '${anime.latestEpisodeNumber}',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 10,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 // ... existing rating badge ...
//                 Positioned(
//                   top: 8,
//                   right: 8,
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
//                     decoration: BoxDecoration(
//                       color: Colors.amber,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         Icon(Icons.star, color: Colors.black, size: 12),
//                         SizedBox(width: 2),
//                         Text(
//                           anime.rating,
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 10,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 // ... existing title and video link indicator ...
//                 Positioned(
//                   bottom: 8,
//                   left: 8,
//                   right: 8,
//                   child: Text(
//                     anime.title,
//                     style: TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                       shadows: [
//                         Shadow(
//                           offset: Offset(1, 1),
//                           blurRadius: 2,
//                           color: Colors.black,
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                     maxLines: 2,
//                     overflow: TextOverflow.ellipsis,
//                   ),
//                 ),
//                 Positioned(
//                   bottom: 8,
//                   right: 8,
//                   child: Container(
//                     padding: const EdgeInsets.all(4),
//                     decoration: BoxDecoration(
//                       color: Colors.black54,
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child:
//                         anime.videoLink != null && anime.videoLink!.isNotEmpty
//                         ? const Icon(
//                             Icons.check_circle,
//                             color: Colors.green,
//                             size: 20,
//                           )
//                         : const Icon(
//                             Icons.link_off,
//                             color: Colors.red,
//                             size: 20,
//                           ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color(0xFF8B4513),
//         elevation: 0,
//         title: Text(
//           'مكتبة الأنمي',
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         centerTitle: true,
//         actions: [
//           // <CHANGE> إضافة زر التحديث اليدوي
//           // IconButton(
//           //   onPressed: _refreshAnimeData,
//           //   icon: Icon(Icons.refresh, color: Colors.white, size: 28),
//           // ),
//           IconButton(
//             onPressed: _toggleSearch,
//             icon: Icon(
//               _showSearchBar ? Icons.close : Icons.search,
//               color: Colors.white,
//               size: 28,
//             ),
//           ),
//         ],
//       ),
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
//           ),
//         ),
//         child: FadeTransition(
//           opacity: _fadeAnimation,
//           child: FutureBuilder<List<Anime>>(
//             future: _animeFuture,
//             builder: (context, snapshot) {
//               // ... existing build logic ...
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(
//                   child: CircularProgressIndicator(color: Colors.amber),
//                 );
//               } else if (snapshot.hasError) {
//                 return Center(
//                   child: Text(
//                     "Error: ${snapshot.error}",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
//                 return Center(
//                   child: Text(
//                     "No anime found.",
//                     style: TextStyle(color: Colors.white),
//                   ),
//                 );
//               } else {
//                 return CustomScrollView(
//                   slivers: [
//                     if (_showSearchBar)
//                       SliverToBoxAdapter(
//                         child: Container(
//                           padding: EdgeInsets.all(20),
//                           child: Container(
//                             decoration: BoxDecoration(
//                               color: Colors.white.withOpacity(0.1),
//                               borderRadius: BorderRadius.circular(25),
//                               border: Border.all(
//                                 color: Colors.white.withOpacity(0.2),
//                                 width: 1,
//                               ),
//                             ),
//                             child: TextField(
//                               controller: _searchController,
//                               onChanged: _searchAnime,
//                               style: TextStyle(color: Colors.white),
//                               autofocus: true,
//                               decoration: InputDecoration(
//                                 hintText: 'ابحث عن أنمي...',
//                                 hintStyle: TextStyle(color: Colors.white60),
//                                 prefixIcon: Icon(
//                                   Icons.search,
//                                   color: Colors.white70,
//                                 ),
//                                 border: InputBorder.none,
//                                 contentPadding: EdgeInsets.symmetric(
//                                   horizontal: 20,
//                                   vertical: 15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     if (!_isSearching)
//                       SliverToBoxAdapter(
//                         child: _buildFeaturedAnimeCarousel(snapshot.data!),
//                       ),
//                     SliverToBoxAdapter(
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 10,
//                         ),
//                         child: Row(
//                           children: [
//                             Container(
//                               width: 4,
//                               height: 25,
//                               decoration: BoxDecoration(
//                                 gradient: LinearGradient(
//                                   colors: [Colors.red, Colors.orange],
//                                   begin: Alignment.topCenter,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                                 borderRadius: BorderRadius.circular(2),
//                               ),
//                             ),
//                             SizedBox(width: 10),
//                             Text(
//                               _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
//                               style: TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 shadows: [
//                                   Shadow(
//                                     offset: Offset(2, 2),
//                                     blurRadius: 4,
//                                     color: Colors.black.withOpacity(0.5),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SliverPadding(
//                       padding: EdgeInsets.symmetric(
//                         horizontal: 20,
//                         vertical: 10,
//                       ),
//                       sliver: SliverGrid(
//                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 3,
//                           childAspectRatio: 0.65,
//                           crossAxisSpacing: 12,
//                           mainAxisSpacing: 15,
//                         ),
//                         delegate: SliverChildBuilderDelegate((context, index) {
//                           return _filteredAnime.isNotEmpty
//                               ? _buildAnimeCard(_filteredAnime[index], index)
//                               : Center(
//                                   child: Text(
//                                     "No results found.",
//                                     style: TextStyle(color: Colors.white),
//                                   ),
//                                 );
//                         }, childCount: _filteredAnime.length),
//                       ),
//                     ),
//                     SliverToBoxAdapter(child: SizedBox(height: 30)),
//                   ],
//                 );
//               }
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   // ... existing methods remain unchanged ...
//   void _startAutoScroll() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
//         if (_currentPage < (_allAnime.take(8).length - 1)) {
//           _currentPage++;
//         } else {
//           _currentPage = 0;
//         }
//         _pageController.animateToPage(
//           _currentPage,
//           duration: Duration(milliseconds: 800),
//           curve: Curves.easeInOutCubic,
//         );
//       }
//     });
//   }

//   void _searchAnime(String query) {
//     setState(() {
//       if (query.isEmpty) {
//         _filteredAnime = _allAnime;
//         _isSearching = false;
//       } else {
//         _filteredAnime = _allAnime
//             .where(
//               (anime) =>
//                   anime.title.toLowerCase().contains(query.toLowerCase()),
//             )
//             .toList();
//         _isSearching = true;
//       }
//     });
//   }

//   void _toggleSearch() {
//     setState(() {
//       _showSearchBar = !_showSearchBar;
//       if (!_showSearchBar) {
//         _searchController.clear();
//         _searchAnime('');
//       }
//     });
//   }

//   void _navigateToAnimeDetails(Anime anime) {
//     Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => SeriesDetailsPage(
//           seriesId: anime.id,
//           title: anime.title,
//           image: anime.imageUrl,
//           rating: anime.rating,
//           year: anime.year,
//           seasons: anime.episodes,
//           genre: anime.genre,
//           videoLink: anime.videoLink,
//           contentType: ContentType.anime,
//         ),
//       ),
//     );
//   }

//   Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
//     List<Anime> featuredAnime = animeList.take(8).toList();
//     if (featuredAnime.isEmpty) return SizedBox.shrink();

//     return Container(
//       height: 280,
//       margin: EdgeInsets.symmetric(vertical: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Row(
//               children: [
//                 Container(
//                   width: 4,
//                   height: 25,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Colors.amber, Colors.orange],
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                     ),
//                     borderRadius: BorderRadius.circular(2),
//                   ),
//                 ),
//                 SizedBox(width: 10),
//                 Text(
//                   'الأنمي المميز',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     shadows: [
//                       Shadow(
//                         offset: Offset(2, 2),
//                         blurRadius: 4,
//                         color: Colors.black.withOpacity(0.5),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(height: 15),
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: featuredAnime.length,
//               onPageChanged: (index) => setState(() => _currentPage = index),
//               itemBuilder: (context, index) {
//                 final anime = featuredAnime[index];
//                 return GestureDetector(
//                   onTap: () => _navigateToAnimeDetails(anime),
//                   child: Container(
//                     margin: EdgeInsets.symmetric(horizontal: 15),
//                     child: Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(20),
//                           child: Container(
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.4),
//                                   spreadRadius: 3,
//                                   blurRadius: 15,
//                                   offset: Offset(0, 8),
//                                 ),
//                               ],
//                             ),
//                             child: anime.imageUrl.isNotEmpty
//                                 ? Image.network(
//                                     anime.imageUrl,
//                                     fit: BoxFit.cover,
//                                     errorBuilder: (context, error, stackTrace) {
//                                       return Container(
//                                         decoration: BoxDecoration(
//                                           gradient: LinearGradient(
//                                             colors: [
//                                               Colors.grey[800]!,
//                                               Colors.grey[900]!,
//                                             ],
//                                             begin: Alignment.topLeft,
//                                             end: Alignment.bottomRight,
//                                           ),
//                                         ),
//                                         child: Center(
//                                           child: Icon(
//                                             Icons.movie_creation_outlined,
//                                             size: 60,
//                                             color: Colors.white54,
//                                           ),
//                                         ),
//                                       );
//                                     },
//                                   )
//                                 : Container(
//                                     decoration: BoxDecoration(
//                                       gradient: LinearGradient(
//                                         colors: [
//                                           Colors.grey[800]!,
//                                           Colors.grey[900]!,
//                                         ],
//                                         begin: Alignment.topLeft,
//                                         end: Alignment.bottomRight,
//                                       ),
//                                     ),
//                                     child: Center(
//                                       child: Icon(
//                                         Icons.movie_creation_outlined,
//                                         size: 60,
//                                         color: Colors.white54,
//                                       ),
//                                     ),
//                                   ),
//                           ),
//                         ),
//                         Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             gradient: LinearGradient(
//                               begin: Alignment.topCenter,
//                               end: Alignment.bottomCenter,
//                               colors: [
//                                 Colors.transparent,
//                                 Colors.transparent,
//                                 Colors.black.withOpacity(0.9),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           bottom: 20,
//                           left: 20,
//                           right: 20,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 anime.title,
//                                 style: TextStyle(
//                                   fontSize: 22,
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.white,
//                                   shadows: [
//                                     Shadow(
//                                       offset: Offset(1, 1),
//                                       blurRadius: 3,
//                                       color: Colors.black,
//                                     ),
//                                   ],
//                                 ),
//                                 maxLines: 2,
//                                 overflow: TextOverflow.ellipsis,
//                               ),
//                               SizedBox(height: 8),
//                               Row(
//                                 children: [
//                                   Container(
//                                     padding: EdgeInsets.symmetric(
//                                       horizontal: 8,
//                                       vertical: 4,
//                                     ),
//                                     decoration: BoxDecoration(
//                                       color: Colors.amber,
//                                       borderRadius: BorderRadius.circular(12),
//                                     ),
//                                     child: Row(
//                                       mainAxisSize: MainAxisSize.min,
//                                       children: [
//                                         Icon(
//                                           Icons.star,
//                                           color: Colors.black,
//                                           size: 16,
//                                         ),
//                                         SizedBox(width: 4),
//                                         Text(
//                                           anime.rating,
//                                           style: TextStyle(
//                                             color: Colors.black,
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 12,
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(width: 10),
//                                   Text(
//                                     anime.year,
//                                     style: TextStyle(
//                                       color: Colors.white70,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   Spacer(),
//                                   Container(
//                                     padding: const EdgeInsets.all(8),
//                                     decoration: BoxDecoration(
//                                       color: Colors.black.withOpacity(0.7),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child:
//                                         anime.videoLink != null &&
//                                             anime.videoLink!.isNotEmpty
//                                         ? const Icon(
//                                             Icons.check_circle,
//                                             color: Colors.green,
//                                             size: 20,
//                                           )
//                                         : const Icon(
//                                             Icons.link_off,
//                                             color: Colors.red,
//                                             size: 20,
//                                           ),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 15),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               featuredAnime.length,
//               (index) => AnimatedContainer(
//                 duration: Duration(milliseconds: 300),
//                 margin: EdgeInsets.symmetric(horizontal: 4),
//                 width: _currentPage == index ? 30 : 10,
//                 height: 6,
//                 decoration: BoxDecoration(
//                   gradient: _currentPage == index
//                       ? LinearGradient(colors: [Colors.amber, Colors.orange])
//                       : null,
//                   color: _currentPage == index ? null : Colors.white38,
//                   borderRadius: BorderRadius.circular(3),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:korrrrrrrr/removed/serias_screens/series_detiels.dart';
import 'package:transparent_image/transparent_image.dart';

class Anime {
  final String id;
  final String title;
  final String imageUrl;
  final String rating;
  final String year;
  final String episodes;
  final String genre;
  String? videoLink;
  final bool isCustom;
  int? latestEpisodeNumber;
  DateTime? latestEpisodeDate;
  bool hasNewEpisodes;

  Anime({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.year,
    required this.episodes,
    required this.genre,
    this.videoLink,
    this.isCustom = false,
    this.latestEpisodeNumber,
    this.latestEpisodeDate,
    this.hasNewEpisodes = false,
  });

  factory Anime.fromJson(Map<String, dynamic> json) {
    return Anime(
      id: json['mal_id'].toString(),
      title: json['title_english'] ?? json['title'] ?? 'N/A',
      imageUrl: json['images']?['jpg']?['large_image_url'] ?? '',
      rating: (json['score'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: (json['year'] as int?)?.toString() ?? 'N/A',
      episodes: '${json['episodes'] ?? 0} حلقة',
      genre: json['genres'] != null && json['genres'].isNotEmpty
          ? json['genres'][0]['name'] ?? 'N/A'
          : 'N/A',
      isCustom: false,
    );
  }

  factory Anime.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Anime(
      id: doc.id,
      title: data['title'] ?? 'N/A',
      imageUrl: data['image'] ?? '',
      rating: (data['rating'] as num?)?.toStringAsFixed(1) ?? 'N/A',
      year: (data['year'] as int?)?.toString() ?? 'N/A',
      episodes: data['seasons'] ?? 'N/A',
      genre: data['genre'] ?? 'N/A',
      videoLink: data['videoLink'],
      isCustom: true,
    );
  }
}

class AnimePage extends StatefulWidget {
  @override
  _AnimePageState createState() => _AnimePageState();
}

class _AnimePageState extends State<AnimePage> with TickerProviderStateMixin {
  PageController _pageController = PageController();
  TextEditingController _searchController = TextEditingController();
  Timer? _timer;
  Timer? _refreshTimer;
  int _currentPage = 0;
  bool _isSearching = false;
  bool _showSearchBar = false;
  List<Anime> _allAnime = [];
  List<Anime> _filteredAnime = [];

  // ✅ إصلاح: تهيئة Future بقيمة ابتدائية بدل late
  Future<List<Anime>> _animeFuture = Future.value([]);

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();

    // ✅ إصلاح: تهيئة البيانات مباشرة
    _initializeData();
    _startAutoScroll();
  }

  void _initializeData() {
    setState(() {
      _animeFuture = _fetchAndProcessAnime();
    });
  }

  void _refreshAnimeData() {
    if (mounted) {
      setState(() {
        _animeFuture = _fetchAndProcessAnime();
      });
    }
  }

  // ✅ تحسين دالة جلب البيانات لجعلها أسرع
  Future<List<Anime>> _fetchAndProcessAnime() async {
    List<Anime> combinedAnime = [];

    try {
      // ✅ استخدام Future.wait لجلب البيانات بالتوازي
      final results = await Future.wait([
        _fetchCustomAnime(),
        _fetchJikanAnime(),
      ], eagerError: true);

      combinedAnime = [...results[0], ...results[1]];

      // ✅ جلب روابط الفيديو بشكل منفصل
      await _fetchVideoLinks(combinedAnime);

      if (mounted) {
        setState(() {
          _allAnime = combinedAnime;
          _filteredAnime = combinedAnime;
        });
      }
    } catch (e) {
      print('Error fetching anime: $e');
    }

    return combinedAnime;
  }

  // ✅ تحسين جلب الأنمي المخصص باستخدام Future.wait
  Future<List<Anime>> _fetchCustomAnime() async {
    try {
      final QuerySnapshot customAnimeSnapshot = await _firestore
          .collection('add_anime')
          .get();

      if (customAnimeSnapshot.docs.isEmpty) return [];

      // ✅ استخدام Future.wait لجميع الطلبات بدل for loop
      final futures = customAnimeSnapshot.docs.map((doc) async {
        Anime anime = Anime.fromFirestore(doc);

        try {
          final QuerySnapshot episodesSnapshot = await _firestore
              .collection('add_anime')
              .doc(doc.id)
              .collection('episodes')
              .orderBy('createdAt', descending: true)
              .limit(1)
              .get();

          if (episodesSnapshot.docs.isNotEmpty) {
            final latestEpisodeDoc = episodesSnapshot.docs.first;
            final episodeData = latestEpisodeDoc.data() as Map<String, dynamic>;

            anime.latestEpisodeNumber = episodeData['episodeNumber'] ?? 0;
            anime.latestEpisodeDate = (episodeData['createdAt'] as Timestamp)
                .toDate();

            final now = DateTime.now();
            final daysDifference = now
                .difference(anime.latestEpisodeDate!)
                .inDays;
            anime.hasNewEpisodes = daysDifference <= 7;
          }
        } catch (e) {
          print('Error fetching episodes for ${doc.id}: $e');
        }

        return anime;
      }).toList();

      List<Anime> fetchedCustomAnime = await Future.wait(futures);

      // ✅ ترتيب الأنمي
      fetchedCustomAnime.sort((a, b) {
        if (a.hasNewEpisodes && !b.hasNewEpisodes) return -1;
        if (!a.hasNewEpisodes && b.hasNewEpisodes) return 1;
        if (a.latestEpisodeDate != null && b.latestEpisodeDate != null) {
          return b.latestEpisodeDate!.compareTo(a.latestEpisodeDate!);
        }
        return 0;
      });

      return fetchedCustomAnime;
    } catch (e) {
      print('Error fetching custom anime: $e');
      return [];
    }
  }

  // ✅ جلب بيانات Jikan API
  Future<List<Anime>> _fetchJikanAnime() async {
    try {
      final response = await http
          .get(Uri.parse('https://api.jikan.moe/v4/top/anime'))
          .timeout(Duration(seconds: 10));

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<Anime> fetchedAnime = List<Map<String, dynamic>>.from(
          jsonData['data'],
        ).map((json) => Anime.fromJson(json)).toList();
        return fetchedAnime;
      } else {
        print('Jikan API error: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('Error fetching Jikan anime: $e');
      return [];
    }
  }

  // ✅ جلب روابط الفيديو
  Future<void> _fetchVideoLinks(List<Anime> animeList) async {
    try {
      final QuerySnapshot linksSnapshot = await _firestore
          .collection('anime')
          .get();

      final Map<String, String> videoLinksMap = {};
      for (var doc in linksSnapshot.docs) {
        if (doc.data() != null &&
            (doc.data() as Map<String, dynamic>).containsKey('link')) {
          videoLinksMap[doc.id] =
              (doc.data() as Map<String, dynamic>)['link'] as String;
        }
      }

      for (var anime in animeList) {
        if (videoLinksMap.containsKey(anime.id)) {
          anime.videoLink = videoLinksMap[anime.id];
        }
      }
    } catch (e) {
      print('Error fetching video links: $e');
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _refreshTimer?.cancel();
    _pageController.dispose();
    _searchController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  // ✅ تحسين بناء كارت الأنمي مع حجم صور مناسب
  Widget _buildAnimeCard(Anime anime, int index) {
    return GestureDetector(
      onTap: () => _navigateToAnimeDetails(anime),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300 + (index * 50)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(18),
            child: Stack(
              children: [
                // ✅ استخدام FadeInImage للتحميل التدريجي
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: anime.imageUrl.isNotEmpty
                      ? FadeInImage.memoryNetwork(
                          placeholder: kTransparentImage,
                          image: anime.imageUrl,
                          fit: BoxFit.cover,
                          imageErrorBuilder: (context, error, stackTrace) {
                            return _buildPlaceholder();
                          },
                        )
                      : _buildPlaceholder(),
                ),

                // Gradient overlay
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.transparent,
                        Colors.black.withOpacity(0.8),
                      ],
                    ),
                  ),
                ),

                // مؤشر الحلقة الجديدة
                if (anime.latestEpisodeNumber != null)
                  Positioned(
                    top: 8,
                    left: 8,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: anime.hasNewEpisodes ? Colors.red : Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (anime.hasNewEpisodes) ...[
                            Icon(
                              Icons.fiber_new,
                              color: Colors.white,
                              size: 12,
                            ),
                            SizedBox(width: 2),
                          ],
                          Text(
                            '${anime.latestEpisodeNumber}',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                // التقييم
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.star, color: Colors.black, size: 12),
                        SizedBox(width: 2),
                        Text(
                          anime.rating,
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // العنوان
                Positioned(
                  bottom: 8,
                  left: 8,
                  right: 8,
                  child: Text(
                    anime.title,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),

                // مؤشر رابط الفيديو
                Positioned(
                  bottom: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:
                        anime.videoLink != null && anime.videoLink!.isNotEmpty
                        ? const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 20,
                          )
                        : const Icon(
                            Icons.link_off,
                            color: Colors.red,
                            size: 20,
                          ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPlaceholder() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey[800]!, Colors.grey[900]!],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Icon(
          Icons.movie_creation_outlined,
          size: 40,
          color: Colors.white54,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF8B4513),
        elevation: 0,
        title: Text(
          'مكتبة الأنمي',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _refreshAnimeData,
            icon: Icon(Icons.refresh, color: Colors.white, size: 28),
          ),
          IconButton(
            onPressed: _toggleSearch,
            icon: Icon(
              _showSearchBar ? Icons.close : Icons.search,
              color: Colors.white,
              size: 28,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF8B4513), Color(0xFF654321), Color(0xFF2F1B14)],
          ),
        ),
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: FutureBuilder<List<Anime>>(
            future: _animeFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return _buildLoadingState();
              } else if (snapshot.hasError) {
                return _buildErrorState(snapshot.error);
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return _buildEmptyState();
              } else {
                return _buildSuccessState(snapshot.data!);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(child: CircularProgressIndicator(color: Colors.amber));
  }

  Widget _buildErrorState(dynamic error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.error_outline, color: Colors.white, size: 50),
          SizedBox(height: 16),
          Text(
            "حدث خطأ في التحميل",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _refreshAnimeData,
            child: Text("إعادة المحاولة"),
          ),
        ],
      ),
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.movie_creation_outlined, color: Colors.white54, size: 50),
          SizedBox(height: 16),
          Text(
            "لا توجد أنميات",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: _refreshAnimeData,
            child: Text("تحديث البيانات"),
          ),
        ],
      ),
    );
  }

  Widget _buildSuccessState(List<Anime> animeList) {
    return RefreshIndicator(
      onRefresh: () async {
        await _fetchAndProcessAnime();
      },
      color: Colors.amber,
      backgroundColor: Color(0xFF8B4513),
      child: CustomScrollView(
        slivers: [
          if (_showSearchBar)
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.all(20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: TextField(
                    controller: _searchController,
                    onChanged: _searchAnime,
                    style: TextStyle(color: Colors.white),
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: 'ابحث عن أنمي...',
                      hintStyle: TextStyle(color: Colors.white60),
                      prefixIcon: Icon(Icons.search, color: Colors.white70),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          if (!_isSearching)
            SliverToBoxAdapter(child: _buildFeaturedAnimeCarousel(animeList)),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Container(
                    width: 4,
                    height: 25,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.red, Colors.orange],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    _isSearching ? 'نتائج البحث' : 'جميع الأنمي',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 4,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.65,
                crossAxisSpacing: 12,
                mainAxisSpacing: 15,
              ),
              delegate: SliverChildBuilderDelegate((context, index) {
                return _filteredAnime.isNotEmpty
                    ? _buildAnimeCard(_filteredAnime[index], index)
                    : Center(
                        child: Text(
                          "No results found.",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
              }, childCount: _filteredAnime.length),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 30)),
        ],
      ),
    );
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (!_isSearching && _pageController.hasClients && _allAnime.isNotEmpty) {
        if (_currentPage < (_allAnime.take(8).length - 1)) {
          _currentPage++;
        } else {
          _currentPage = 0;
        }
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 800),
          curve: Curves.easeInOutCubic,
        );
      }
    });
  }

  void _searchAnime(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredAnime = _allAnime;
        _isSearching = false;
      } else {
        _filteredAnime = _allAnime
            .where(
              (anime) =>
                  anime.title.toLowerCase().contains(query.toLowerCase()),
            )
            .toList();
        _isSearching = true;
      }
    });
  }

  void _toggleSearch() {
    setState(() {
      _showSearchBar = !_showSearchBar;
      if (!_showSearchBar) {
        _searchController.clear();
        _searchAnime('');
      }
    });
  }

  void _navigateToAnimeDetails(Anime anime) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SeriesDetailsPage(
          seriesId: anime.id,
          title: anime.title,
          image: anime.imageUrl,
          rating: anime.rating,
          year: anime.year,
          seasons: anime.episodes,
          genre: anime.genre,
          videoLink: anime.videoLink,
          contentType: ContentType.anime,
        ),
      ),
    );
  }

  Widget _buildFeaturedAnimeCarousel(List<Anime> animeList) {
    List<Anime> featuredAnime = animeList.take(8).toList();
    if (featuredAnime.isEmpty) return SizedBox.shrink();

    return Container(
      height: 280,
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 4,
                  height: 25,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.amber, Colors.orange],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'الأنمي المميز',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: featuredAnime.length,
              onPageChanged: (index) => setState(() => _currentPage = index),
              itemBuilder: (context, index) {
                final anime = featuredAnime[index];
                return GestureDetector(
                  onTap: () => _navigateToAnimeDetails(anime),
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 3,
                                  blurRadius: 15,
                                  offset: Offset(0, 8),
                                ),
                              ],
                            ),
                            child: anime.imageUrl.isNotEmpty
                                ? FadeInImage.memoryNetwork(
                                    placeholder: kTransparentImage,
                                    image: anime.imageUrl,
                                    fit: BoxFit.cover,
                                    imageErrorBuilder:
                                        (context, error, stackTrace) {
                                          return _buildPlaceholder();
                                        },
                                  )
                                : _buildPlaceholder(),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.transparent,
                                Colors.black.withOpacity(0.9),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          left: 20,
                          right: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                anime.title,
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
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
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 4,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.amber,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.black,
                                          size: 16,
                                        ),
                                        SizedBox(width: 4),
                                        Text(
                                          anime.rating,
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    anime.year,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.7),
                                      shape: BoxShape.circle,
                                    ),
                                    child:
                                        anime.videoLink != null &&
                                            anime.videoLink!.isNotEmpty
                                        ? const Icon(
                                            Icons.check_circle,
                                            color: Colors.green,
                                            size: 20,
                                          )
                                        : const Icon(
                                            Icons.link_off,
                                            color: Colors.red,
                                            size: 20,
                                          ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              featuredAnime.length,
              (index) => AnimatedContainer(
                duration: Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 4),
                width: _currentPage == index ? 30 : 10,
                height: 6,
                decoration: BoxDecoration(
                  gradient: _currentPage == index
                      ? LinearGradient(colors: [Colors.amber, Colors.orange])
                      : null,
                  color: _currentPage == index ? null : Colors.white38,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
