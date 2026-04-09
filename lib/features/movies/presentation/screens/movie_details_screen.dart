// // // // import 'package:flutter/material.dart';

// // // // class FilmDetailsPage extends StatelessWidget {
// // // //   final String title;
// // // //   final String image;
// // // //   final double rating;
// // // //   final String year;
// // // //   final String duration;
// // // //   final String genre;

// // // //   const FilmDetailsPage({
// // // //     super.key,
// // // //     required this.title,
// // // //     required this.image,
// // // //     this.rating = 4.5,
// // // //     this.year = "2023",
// // // //     this.duration = "2h 15m",
// // // //     this.genre = "أكشن, دراما",
// // // //   });

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: const Color(0xFF121212),
// // // //       body: CustomScrollView(
// // // //         slivers: [
// // // //           SliverAppBar(
// // // //             expandedHeight: 320,
// // // //             pinned: true,
// // // //             flexibleSpace: FlexibleSpaceBar(
// // // //               background: Stack(
// // // //                 fit: StackFit.expand,
// // // //                 children: [
// // // //                   Image.asset(image, fit: BoxFit.cover),
// // // //                   DecoratedBox(
// // // //                     decoration: BoxDecoration(
// // // //                       gradient: LinearGradient(
// // // //                         begin: Alignment.topCenter,
// // // //                         end: Alignment.bottomCenter,
// // // //                         colors: [
// // // //                           Colors.transparent,
// // // //                           Colors.black.withOpacity(0.7),
// // // //                         ],
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //             leading: IconButton(
// // // //               icon: const Icon(
// // // //                 Icons.arrow_back_ios_new_rounded,
// // // //                 color: Colors.white,
// // // //               ),
// // // //               onPressed: () => Navigator.pop(context),
// // // //             ),
// // // //             actions: [
// // // //               IconButton(
// // // //                 icon: const Icon(Icons.bookmark_border, color: Colors.white),
// // // //                 onPressed: () {},
// // // //               ),
// // // //               IconButton(
// // // //                 icon: const Icon(Icons.share, color: Colors.white),
// // // //                 onPressed: () {},
// // // //               ),
// // // //             ],
// // // //           ),
// // // //           SliverToBoxAdapter(
// // // //             child: Padding(
// // // //               padding: const EdgeInsets.all(20),
// // // //               child: Column(
// // // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // // //                 children: [
// // // //                   Row(
// // // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // // //                     children: [
// // // //                       Expanded(
// // // //                         child: Column(
// // // //                           crossAxisAlignment: CrossAxisAlignment.start,
// // // //                           children: [
// // // //                             Text(
// // // //                               title,
// // // //                               style: const TextStyle(
// // // //                                 color: Colors.white,
// // // //                                 fontSize: 28,
// // // //                                 fontWeight: FontWeight.bold,
// // // //                               ),
// // // //                             ),
// // // //                             const SizedBox(height: 8),
// // // //                             Row(
// // // //                               children: [
// // // //                                 const Icon(
// // // //                                   Icons.star,
// // // //                                   color: Colors.amber,
// // // //                                   size: 20,
// // // //                                 ),
// // // //                                 const SizedBox(width: 4),
// // // //                                 Text(
// // // //                                   "$rating",
// // // //                                   style: const TextStyle(
// // // //                                     color: Colors.white70,
// // // //                                     fontSize: 16,
// // // //                                   ),
// // // //                                 ),
// // // //                                 const SizedBox(width: 16),
// // // //                                 Text(
// // // //                                   year,
// // // //                                   style: const TextStyle(
// // // //                                     color: Colors.white70,
// // // //                                     fontSize: 16,
// // // //                                   ),
// // // //                                 ),
// // // //                                 const SizedBox(width: 16),
// // // //                                 Text(
// // // //                                   duration,
// // // //                                   style: const TextStyle(
// // // //                                     color: Colors.white70,
// // // //                                     fontSize: 16,
// // // //                                   ),
// // // //                                 ),
// // // //                               ],
// // // //                             ),
// // // //                           ],
// // // //                         ),
// // // //                       ),
// // // //                       Container(
// // // //                         decoration: BoxDecoration(
// // // //                           color: const Color(0xFF00C853),
// // // //                           borderRadius: BorderRadius.circular(4),
// // // //                         ),
// // // //                         padding: const EdgeInsets.symmetric(
// // // //                           horizontal: 8,
// // // //                           vertical: 4,
// // // //                         ),
// // // //                         child: Text(
// // // //                           "HD",
// // // //                           style: TextStyle(
// // // //                             color: Colors.white,
// // // //                             fontWeight: FontWeight.bold,
// // // //                             fontSize: 12,
// // // //                           ),
// // // //                         ),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                   const SizedBox(height: 16),
// // // //                   Text(
// // // //                     genre,
// // // //                     style: const TextStyle(color: Colors.white70, fontSize: 16),
// // // //                   ),
// // // //                   const SizedBox(height: 24),
// // // //                   DefaultTabController(
// // // //                     length: 3,
// // // //                     child: Column(
// // // //                       children: [
// // // //                         const TabBar(
// // // //                           tabs: [
// // // //                             Tab(text: "القصة"),
// // // //                             Tab(text: "الطاقم"),
// // // //                             Tab(text: "التعليقات"),
// // // //                           ],
// // // //                           indicatorColor: Color(0xFF00C853),
// // // //                           labelColor: Colors.white,
// // // //                           unselectedLabelColor: Colors.white54,
// // // //                         ),
// // // //                         SizedBox(
// // // //                           height: 200,
// // // //                           child: TabBarView(
// // // //                             children: [
// // // //                               Padding(
// // // //                                 padding: const EdgeInsets.only(top: 16),
// // // //                                 child: Text(
// // // //                                   "هذه قصة الفيلم بالتفصيل. يمكنك كتابة ملخص كامل للفيوم هنا مع ذكر الأحداث الرئيسية دون حرق الأحداث المفاجئة.",
// // // //                                   style: TextStyle(
// // // //                                     color: Colors.white70,
// // // //                                     fontSize: 16,
// // // //                                     height: 1.5,
// // // //                                   ),
// // // //                                 ),
// // // //                               ),
// // // //                               Center(
// // // //                                 child: Text(
// // // //                                   "معلومات الطاقم",
// // // //                                   style: TextStyle(color: Colors.white),
// // // //                                 ),
// // // //                               ),
// // // //                               Center(
// // // //                                 child: Text(
// // // //                                   "تعليقات المشاهدين",
// // // //                                   style: TextStyle(color: Colors.white),
// // // //                                 ),
// // // //                               ),
// // // //                             ],
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   const SizedBox(height: 24),
// // // //                   Row(
// // // //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // // //                     children: [
// // // //                       Column(
// // // //                         children: [
// // // //                           IconButton(
// // // //                             icon: const Icon(
// // // //                               Icons.add,
// // // //                               color: Colors.white,
// // // //                               size: 28,
// // // //                             ),
// // // //                             onPressed: () {},
// // // //                           ),
// // // //                           const Text(
// // // //                             "قائمتي",
// // // //                             style: TextStyle(color: Colors.white70),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                       Column(
// // // //                         children: [
// // // //                           IconButton(
// // // //                             icon: const Icon(
// // // //                               Icons.thumb_up,
// // // //                               color: Colors.white,
// // // //                               size: 28,
// // // //                             ),
// // // //                             onPressed: () {},
// // // //                           ),
// // // //                           const Text(
// // // //                             "أعجبني",
// // // //                             style: TextStyle(color: Colors.white70),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                       Column(
// // // //                         children: [
// // // //                           IconButton(
// // // //                             icon: const Icon(
// // // //                               Icons.star_border,
// // // //                               color: Colors.white,
// // // //                               size: 28,
// // // //                             ),
// // // //                             onPressed: () {},
// // // //                           ),
// // // //                           const Text(
// // // //                             "تقييمي",
// // // //                             style: TextStyle(color: Colors.white70),
// // // //                           ),
// // // //                         ],
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                   const SizedBox(height: 24),
// // // //                   SizedBox(
// // // //                     width: double.infinity,
// // // //                     child: ElevatedButton.icon(
// // // //                       onPressed: () {},
// // // //                       icon: const Icon(Icons.play_arrow),
// // // //                       label: const Text("مشاهدة الآن"),
// // // //                       style: ElevatedButton.styleFrom(
// // // //                         backgroundColor: const Color(0xFF00C853),
// // // //                         padding: const EdgeInsets.symmetric(vertical: 16),
// // // //                         textStyle: const TextStyle(
// // // //                           fontSize: 18,
// // // //                           fontWeight: FontWeight.bold,
// // // //                         ),
// // // //                         shape: RoundedRectangleBorder(
// // // //                           borderRadius: BorderRadius.circular(10),
// // // //                         ),
// // // //                       ),
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ),
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // import 'package:flutter/material.dart';

// // class FilmDetailsPage extends StatelessWidget {
// //   final String title;
// //   final String image;
// //   final String rating;
// //   final String year;
// //   final String duration;
// //   final String genre;

// //   const FilmDetailsPage({
// //     super.key,
// //     required this.title,
// //     required this.image,
// //     this.rating = '4.5',
// //     this.year = "2023",
// //     this.duration = "2h 15m",
// //     this.genre = "أكشن, دراما",
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: const Color(0xFF0F0F0F),
// //       body: CustomScrollView(
// //         slivers: [
// //           SliverAppBar(
// //             expandedHeight: 340,
// //             pinned: true,
// //             backgroundColor: Colors.transparent,
// //             elevation: 0,
// //             flexibleSpace: FlexibleSpaceBar(
// //               background: Stack(
// //                 fit: StackFit.expand,
// //                 children: [
// //                   Image.asset(image, fit: BoxFit.cover),
// //                   Container(
// //                     decoration: BoxDecoration(
// //                       gradient: LinearGradient(
// //                         begin: Alignment.topCenter,
// //                         end: Alignment.bottomCenter,
// //                         colors: [
// //                           Colors.black.withOpacity(0.4),
// //                           Colors.black.withOpacity(0.9),
// //                         ],
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             leading: IconButton(
// //               icon: const Icon(Icons.arrow_back, color: Colors.white),
// //               onPressed: () => Navigator.pop(context),
// //             ),
// //             actions: [
// //               IconButton(
// //                 icon: const Icon(Icons.bookmark_border, color: Colors.white),
// //                 onPressed: () {},
// //               ),
// //               IconButton(
// //                 icon: const Icon(Icons.share, color: Colors.white),
// //                 onPressed: () {},
// //               ),
// //             ],
// //           ),
// //           SliverToBoxAdapter(
// //             child: Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
// //               child: Column(
// //                 crossAxisAlignment: CrossAxisAlignment.start,
// //                 children: [
// //                   // العنوان + التقييم + النوع
// //                   Text(
// //                     title,
// //                     style: const TextStyle(
// //                       color: Colors.white,
// //                       fontSize: 26,
// //                       fontWeight: FontWeight.bold,
// //                       letterSpacing: 1,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 10),
// //                   Row(
// //                     children: [
// //                       _iconText(Icons.star, "$rating", color: Colors.amber),
// //                       const SizedBox(width: 12),
// //                       _iconText(Icons.calendar_today, year),
// //                       const SizedBox(width: 12),
// //                       _iconText(Icons.access_time, duration),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 12),
// //                   Text(
// //                     genre,
// //                     style: const TextStyle(color: Colors.white70, fontSize: 15),
// //                   ),

// //                   const SizedBox(height: 24),

// //                   // Tabs
// //                   DefaultTabController(
// //                     length: 3,
// //                     child: Column(
// //                       children: [
// //                         Container(
// //                           decoration: BoxDecoration(
// //                             color: Colors.white10,
// //                             borderRadius: BorderRadius.circular(10),
// //                           ),
// //                           child: const TabBar(
// //                             indicatorColor: Color(0xFF00C853),
// //                             labelColor: Colors.white,
// //                             unselectedLabelColor: Colors.white54,
// //                             tabs: [
// //                               Tab(text: "القصة"),
// //                               Tab(text: "الطاقم"),
// //                               Tab(text: "التعليقات"),
// //                             ],
// //                           ),
// //                         ),
// //                         SizedBox(
// //                           height: 180,
// //                           child: TabBarView(
// //                             children: [
// //                               Padding(
// //                                 padding: const EdgeInsets.only(top: 16),
// //                                 child: Text(
// //                                   "هذه قصة الفيلم باختصار... يمكنك هنا عرض الأحداث دون حرق النهاية أو المفاجآت.",
// //                                   style: const TextStyle(
// //                                     color: Colors.white70,
// //                                     fontSize: 15,
// //                                     height: 1.6,
// //                                   ),
// //                                 ),
// //                               ),
// //                               const Center(
// //                                 child: Text(
// //                                   "معلومات الطاقم",
// //                                   style: TextStyle(color: Colors.white70),
// //                                 ),
// //                               ),
// //                               const Center(
// //                                 child: Text(
// //                                   "تعليقات المشاهدين",
// //                                   style: TextStyle(color: Colors.white70),
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),

// //                   const SizedBox(height: 24),

// //                   // التفاعل
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                     children: [
// //                       _actionIcon(Icons.add, "قائمتي"),
// //                       _actionIcon(Icons.thumb_up, "أعجبني"),
// //                       _actionIcon(Icons.star_border, "تقييمي"),
// //                     ],
// //                   ),

// //                   const SizedBox(height: 32),

// //                   // زر المشاهدة
// //                   SizedBox(
// //                     width: double.infinity,
// //                     child: ElevatedButton.icon(
// //                       onPressed: () {},
// //                       icon: const Icon(Icons.play_arrow, size: 28),
// //                       label: const Text("مشاهدة الآن"),
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: const Color(0xFF00C853),
// //                         padding: const EdgeInsets.symmetric(vertical: 16),
// //                         textStyle: const TextStyle(
// //                           fontSize: 18,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   Widget _iconText(IconData icon, String text, {Color color = Colors.white70}) {
// //     return Row(
// //       children: [
// //         Icon(icon, color: color, size: 18),
// //         const SizedBox(width: 4),
// //         Text(text, style: TextStyle(color: color, fontSize: 14)),
// //       ],
// //     );
// //   }

// //   Widget _actionIcon(IconData icon, String label) {
// //     return Column(
// //       children: [
// //         Icon(icon, color: Colors.white, size: 28),
// //         const SizedBox(height: 6),
// //         Text(
// //           label,
// //           style: const TextStyle(color: Colors.white60, fontSize: 13),
// //         ),
// //       ],
// //     );
// //   }
// // }
// // // import 'package:flutter/material.dart';

// // // class FilmDetailsPage extends StatelessWidget {
// // //   final String title;
// // //   final String image;
// // //   final double rating;
// // //   final String year;
// // //   final String duration;
// // //   final String genre;

// // //   const FilmDetailsPage({
// // //     super.key,
// // //     required this.title,
// // //     required this.image,
// // //     this.rating = 4.5,
// // //     this.year = "2023",
// // //     this.duration = "2h 15m",
// // //     this.genre = "أكشن, دراما",
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: const Color(0xFF121212),
// // //       body: LayoutBuilder(
// // //         builder: (context, constraints) {
// // //           final isLandscape =
// // //               MediaQuery.of(context).orientation == Orientation.landscape;
// // //           final screenHeight = constraints.maxHeight;

// // //           return CustomScrollView(
// // //             slivers: [
// // //               SliverAppBar(
// // //                 expandedHeight: isLandscape ? screenHeight * 0.6 : 320,
// // //                 pinned: true,
// // //                 flexibleSpace: FlexibleSpaceBar(
// // //                   background: Stack(
// // //                     fit: StackFit.expand,
// // //                     children: [
// // //                       Image.asset(image, fit: BoxFit.cover),
// // //                       DecoratedBox(
// // //                         decoration: BoxDecoration(
// // //                           gradient: LinearGradient(
// // //                             begin: Alignment.topCenter,
// // //                             end: Alignment.bottomCenter,
// // //                             colors: [
// // //                               Colors.transparent,
// // //                               Colors.black.withOpacity(0.7),
// // //                             ],
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //                 leading: IconButton(
// // //                   icon: const Icon(
// // //                     Icons.arrow_back_ios_new_rounded,
// // //                     color: Colors.white,
// // //                   ),
// // //                   onPressed: () => Navigator.pop(context),
// // //                 ),
// // //                 actions: [
// // //                   IconButton(
// // //                     icon: const Icon(
// // //                       Icons.bookmark_border,
// // //                       color: Colors.white,
// // //                     ),
// // //                     onPressed: () {},
// // //                   ),
// // //                   IconButton(
// // //                     icon: const Icon(Icons.share, color: Colors.white),
// // //                     onPressed: () {},
// // //                   ),
// // //                 ],
// // //               ),
// // //               SliverToBoxAdapter(
// // //                 child: Padding(
// // //                   padding: const EdgeInsets.all(20),
// // //                   child: Column(
// // //                     crossAxisAlignment: CrossAxisAlignment.start,
// // //                     children: [
// // //                       // ✅ العنوان + معلومات + HD Label
// // //                       isLandscape
// // //                           ? Row(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Expanded(child: _buildTitleBlock()),
// // //                               const SizedBox(width: 12),
// // //                               _buildHDLabel(),
// // //                             ],
// // //                           )
// // //                           : Row(
// // //                             crossAxisAlignment: CrossAxisAlignment.start,
// // //                             children: [
// // //                               Expanded(child: _buildTitleBlock()),
// // //                               _buildHDLabel(),
// // //                             ],
// // //                           ),

// // //                       const SizedBox(height: 16),
// // //                       Text(
// // //                         genre,
// // //                         style: const TextStyle(
// // //                           color: Colors.white70,
// // //                           fontSize: 16,
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 24),

// // //                       // ✅ Tabs
// // //                       DefaultTabController(
// // //                         length: 3,
// // //                         child: Column(
// // //                           children: [
// // //                             const TabBar(
// // //                               tabs: [
// // //                                 Tab(text: "القصة"),
// // //                                 Tab(text: "الطاقم"),
// // //                                 Tab(text: "التعليقات"),
// // //                               ],
// // //                               indicatorColor: Color(0xFF00C853),
// // //                               labelColor: Colors.white,
// // //                               unselectedLabelColor: Colors.white54,
// // //                             ),
// // //                             SizedBox(
// // //                               height: isLandscape ? screenHeight * 0.3 : 200,
// // //                               child: const TabBarView(
// // //                                 children: [
// // //                                   Padding(
// // //                                     padding: EdgeInsets.only(top: 16),
// // //                                     child: Text(
// // //                                       "هذه قصة الفيلم بالتفصيل. يمكنك كتابة ملخص كامل للفيلم هنا مع ذكر الأحداث الرئيسية دون حرق الأحداث المفاجئة.",
// // //                                       style: TextStyle(
// // //                                         color: Colors.white70,
// // //                                         fontSize: 16,
// // //                                         height: 1.5,
// // //                                       ),
// // //                                     ),
// // //                                   ),
// // //                                   Center(
// // //                                     child: Text(
// // //                                       "معلومات الطاقم",
// // //                                       style: TextStyle(color: Colors.white),
// // //                                     ),
// // //                                   ),
// // //                                   Center(
// // //                                     child: Text(
// // //                                       "تعليقات المشاهدين",
// // //                                       style: TextStyle(color: Colors.white),
// // //                                     ),
// // //                                   ),
// // //                                 ],
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),

// // //                       const SizedBox(height: 24),

// // //                       // ✅ التفاعل
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// // //                         children: _buildActions(),
// // //                       ),

// // //                       const SizedBox(height: 24),

// // //                       // ✅ زر المشاهدة
// // //                       SizedBox(
// // //                         width: double.infinity,
// // //                         child: ElevatedButton.icon(
// // //                           onPressed: () {},
// // //                           icon: const Icon(Icons.play_arrow),
// // //                           label: const Text("مشاهدة الآن"),
// // //                           style: ElevatedButton.styleFrom(
// // //                             backgroundColor: const Color(0xFF00C853),
// // //                             padding: const EdgeInsets.symmetric(vertical: 16),
// // //                             textStyle: const TextStyle(
// // //                               fontSize: 18,
// // //                               fontWeight: FontWeight.bold,
// // //                             ),
// // //                             shape: RoundedRectangleBorder(
// // //                               borderRadius: BorderRadius.circular(10),
// // //                             ),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               ),
// // //             ],
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildHDLabel() {
// // //     return Container(
// // //       decoration: BoxDecoration(
// // //         color: const Color(0xFF00C853),
// // //         borderRadius: BorderRadius.circular(4),
// // //       ),
// // //       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
// // //       child: const Text(
// // //         "HD",
// // //         style: TextStyle(
// // //           color: Colors.white,
// // //           fontWeight: FontWeight.bold,
// // //           fontSize: 12,
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildTitleBlock() {
// // //     return Column(
// // //       crossAxisAlignment: CrossAxisAlignment.start,
// // //       children: [
// // //         Text(
// // //           title,
// // //           style: const TextStyle(
// // //             color: Colors.white,
// // //             fontSize: 28,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //         const SizedBox(height: 8),
// // //         Row(
// // //           children: [
// // //             const Icon(Icons.star, color: Colors.amber, size: 20),
// // //             const SizedBox(width: 4),
// // //             Text(
// // //               "$rating",
// // //               style: const TextStyle(color: Colors.white70, fontSize: 16),
// // //             ),
// // //             const SizedBox(width: 16),
// // //             Text(
// // //               year,
// // //               style: const TextStyle(color: Colors.white70, fontSize: 16),
// // //             ),
// // //             const SizedBox(width: 16),
// // //             Text(
// // //               duration,
// // //               style: const TextStyle(color: Colors.white70, fontSize: 16),
// // //             ),
// // //           ],
// // //         ),
// // //       ],
// // //     );
// // //   }

// // //   List<Widget> _buildActions() {
// // //     return [
// // //       Column(
// // //         children: [
// // //           IconButton(
// // //             icon: const Icon(Icons.add, color: Colors.white, size: 28),
// // //             onPressed: () {},
// // //           ),
// // //           const Text("قائمتي", style: TextStyle(color: Colors.white70)),
// // //         ],
// // //       ),
// // //       Column(
// // //         children: [
// // //           IconButton(
// // //             icon: const Icon(Icons.thumb_up, color: Colors.white, size: 28),
// // //             onPressed: () {},
// // //           ),
// // //           const Text("أعجبني", style: TextStyle(color: Colors.white70)),
// // //         ],
// // //       ),
// // //       Column(
// // //         children: [
// // //           IconButton(
// // //             icon: const Icon(Icons.star_border, color: Colors.white, size: 28),
// // //             onPressed: () {},
// // //           ),
// // //           const Text("تقييمي", style: TextStyle(color: Colors.white70)),
// // //         ],
// // //       ),
// // //     ];
// // //   }
// // // }
// import 'package:flutter/material.dart';
// import 'dart:ui';

// class FilmDetailsPage extends StatefulWidget {
//   final String title;
//   final String image;
//   final String rating;
//   final String year;
//   final String duration;
//   final String genre;

//   const FilmDetailsPage({
//     super.key,
//     required this.title,
//     required this.image,
//     this.rating = '4.5',
//     this.year = "2023",
//     this.duration = "2h 15m",
//     this.genre = "أكشن, دراما",
//   });

//   Future<void> playVideoExternally() async {
//     String videoUrl =
//         'https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
//     try {
//       final intent = AndroidIntent(
//         action: 'action_view',
//         data: videoUrl,
//         type: 'video/*',
//         package: 'com.example.chewie_test', // استبدل بباكج التطبيق المستقبل
//         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
//       );
//       await intent.launch();
//     } catch (e) {
//       print('Error: $e');
//       // Fallback: استخدام المشاركة العامة
//       await Share.share(videoUrl);
//     }
//   }

//   @override
//   State<FilmDetailsPage> createState() => _FilmDetailsPageState();
// }

// class _FilmDetailsPageState extends State<FilmDetailsPage>
//     with TickerProviderStateMixin {
//   late AnimationController _animationController;
//   late Animation<double> _fadeAnimation;
//   late Animation<Offset> _slideAnimation;
//   bool _isLiked = false;
//   bool _isBookmarked = false;
//   double _userRating = 0.0;

//   @override
//   void initState() {
//     super.initState();
//     _animationController = AnimationController(
//       duration: const Duration(milliseconds: 800),
//       vsync: this,
//     );
//     _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
//     );
//     _slideAnimation =
//         Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
//           CurvedAnimation(
//             parent: _animationController,
//             curve: Curves.easeOutCubic,
//           ),
//         );
//     _animationController.forward();
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFF0A0A0A),
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           final isLandscape =
//               MediaQuery.of(context).orientation == Orientation.landscape;
//           final screenHeight = constraints.maxHeight;

//           return CustomScrollView(
//             slivers: [
//               // Hero Image Section
//               SliverAppBar(
//                 expandedHeight: isLandscape ? screenHeight * 0.7 : 400,
//                 pinned: true,
//                 backgroundColor: const Color(0xFF0A0A0A),
//                 flexibleSpace: FlexibleSpaceBar(
//                   background: Stack(
//                     fit: StackFit.expand,
//                     children: [
//                       // Background Image with Blur Effect
//                       Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: AssetImage(widget.image),
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                         child: BackdropFilter(
//                           filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
//                           child: Container(
//                             color: Colors.black.withOpacity(0.1),
//                           ),
//                         ),
//                       ),
//                       // Main Movie Poster
//                       Center(
//                         child: Container(
//                           width: isLandscape ? 200 : 250,
//                           height: isLandscape ? 280 : 350,
//                           margin: const EdgeInsets.only(top: 40),
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(20),
//                             boxShadow: [
//                               BoxShadow(
//                                 color: Colors.black.withOpacity(0.8),
//                                 spreadRadius: 5,
//                                 blurRadius: 30,
//                                 offset: const Offset(0, 15),
//                               ),
//                             ],
//                           ),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Image.asset(widget.image, fit: BoxFit.cover),
//                           ),
//                         ),
//                       ),
//                       // Gradient Overlay
//                       Container(
//                         decoration: BoxDecoration(
//                           gradient: LinearGradient(
//                             begin: Alignment.topCenter,
//                             end: Alignment.bottomCenter,
//                             colors: [
//                               Colors.transparent,
//                               Colors.transparent,
//                               const Color(0xFF0A0A0A).withOpacity(0.8),
//                               const Color(0xFF0A0A0A),
//                             ],
//                             stops: const [0.0, 0.4, 0.8, 1.0],
//                           ),
//                         ),
//                       ),
//                       // Play Button Overlay
//                       Center(
//                         child: Container(
//                           margin: const EdgeInsets.only(top: 40),
//                           child: GestureDetector(
//                             onTap: () {
//                               // Play movie action
//                               _showPlayDialog();
//                             },
//                             child: Container(
//                               width: 80,
//                               height: 80,
//                               decoration: BoxDecoration(
//                                 color: const Color(0xFF00C853).withOpacity(0.9),
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   BoxShadow(
//                                     color: const Color(
//                                       0xFF00C853,
//                                     ).withOpacity(0.4),
//                                     spreadRadius: 0,
//                                     blurRadius: 20,
//                                     offset: const Offset(0, 0),
//                                   ),
//                                 ],
//                               ),
//                               child: const Icon(
//                                 Icons.play_arrow,
//                                 color: Colors.white,
//                                 size: 40,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 leading: Container(
//                   margin: const EdgeInsets.all(8),
//                   decoration: BoxDecoration(
//                     color: Colors.black.withOpacity(0.5),
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: IconButton(
//                     icon: const Icon(
//                       Icons.arrow_back_ios_new_rounded,
//                       color: Colors.white,
//                     ),
//                     onPressed: () => Navigator.pop(context),
//                   ),
//                 ),
//                 actions: [
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: IconButton(
//                       icon: Icon(
//                         _isBookmarked ? Icons.bookmark : Icons.bookmark_border,
//                         color: _isBookmarked
//                             ? const Color(0xFF00C853)
//                             : Colors.white,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isBookmarked = !_isBookmarked;
//                         });
//                       },
//                     ),
//                   ),
//                   Container(
//                     margin: const EdgeInsets.all(8),
//                     decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.5),
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: IconButton(
//                       icon: const Icon(Icons.share, color: Colors.white),
//                       onPressed: () => _showShareDialog(),
//                     ),
//                   ),
//                 ],
//               ),

//               // Content Section
//               SliverToBoxAdapter(
//                 child: FadeTransition(
//                   opacity: _fadeAnimation,
//                   child: SlideTransition(
//                     position: _slideAnimation,
//                     child: Container(
//                       decoration: const BoxDecoration(
//                         color: Color(0xFF0A0A0A),
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(30),
//                           topRight: Radius.circular(30),
//                         ),
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(24),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Title and Info Section
//                             _buildTitleSection(),
//                             const SizedBox(height: 24),

//                             // Rating and Stats
//                             _buildRatingSection(),
//                             const SizedBox(height: 32),

//                             // Action Buttons
//                             _buildActionButtons(),
//                             const SizedBox(height: 32),

//                             // Watch Now Button
//                             _buildWatchButton(),
//                             const SizedBox(height: 32),

//                             // Tabs Section
//                             _buildTabsSection(isLandscape, screenHeight),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildTitleSection() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           children: [
//             Expanded(
//               child: Text(
//                 widget.title,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 32,
//                   fontWeight: FontWeight.bold,
//                   height: 1.2,
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [Color(0xFF00C853), Color(0xFF4CAF50)],
//                 ),
//                 borderRadius: BorderRadius.circular(20),
//                 boxShadow: [
//                   BoxShadow(
//                     color: const Color(0xFF00C853).withOpacity(0.3),
//                     spreadRadius: 0,
//                     blurRadius: 10,
//                     offset: const Offset(0, 4),
//                   ),
//                 ],
//               ),
//               child: const Text(
//                 "HD",
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                   fontSize: 14,
//                 ),
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 12),
//         Text(
//           widget.genre,
//           style: const TextStyle(
//             color: Colors.white60,
//             fontSize: 18,
//             fontWeight: FontWeight.w500,
//           ),
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             _buildInfoChip(Icons.calendar_today, widget.year),
//             const SizedBox(width: 12),
//             _buildInfoChip(Icons.access_time, widget.duration),
//             const SizedBox(width: 12),
//             _buildInfoChip(Icons.language, "عربي"),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildInfoChip(IconData icon, String text) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.1),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: Colors.white70, size: 16),
//           const SizedBox(width: 6),
//           Text(
//             text,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildRatingSection() {
//     return Container(
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Colors.white.withOpacity(0.05),
//             Colors.white.withOpacity(0.02),
//           ],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: Colors.white.withOpacity(0.1), width: 1),
//       ),
//       child: Row(
//         children: [
//           // IMDb Rating
//           Expanded(
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     const Icon(Icons.star, color: Colors.amber, size: 24),
//                     const SizedBox(width: 8),
//                     Text(
//                       "${widget.rating}",
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 24,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 4),
//                 const Text(
//                   "تقييم IMDb",
//                   style: TextStyle(color: Colors.white60, fontSize: 14),
//                 ),
//               ],
//             ),
//           ),
//           Container(width: 1, height: 50, color: Colors.white.withOpacity(0.2)),
//           // User Rating
//           Expanded(
//             child: Column(
//               children: [
//                 GestureDetector(
//                   onTap: () => _showRatingDialog(),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       const Icon(
//                         Icons.star_border,
//                         color: Colors.white70,
//                         size: 24,
//                       ),
//                       const SizedBox(width: 8),
//                       Text(
//                         _userRating > 0
//                             ? "${_userRating.toStringAsFixed(1)}"
//                             : "قيّم",
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 4),
//                 const Text(
//                   "تقييمك",
//                   style: TextStyle(color: Colors.white60, fontSize: 14),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildActionButtons() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         _buildActionButton(
//           icon: _isLiked ? Icons.thumb_up : Icons.thumb_up_outlined,
//           label: "أعجبني",
//           isActive: _isLiked,
//           onTap: () {
//             setState(() {
//               _isLiked = !_isLiked;
//             });
//           },
//         ),
//         _buildActionButton(
//           icon: Icons.download_outlined,
//           label: "تحميل",
//           onTap: () => _showDownloadDialog(),
//         ),
//         _buildActionButton(
//           icon: Icons.playlist_add,
//           label: "قائمتي",
//           onTap: () => _showPlaylistDialog(),
//         ),
//         _buildActionButton(
//           icon: Icons.comment_outlined,
//           label: "تعليق",
//           onTap: () => _showCommentDialog(),
//         ),
//       ],
//     );
//   }

//   Widget _buildActionButton({
//     required IconData icon,
//     required String label,
//     bool isActive = false,
//     required VoidCallback onTap,
//   }) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//         decoration: BoxDecoration(
//           color: isActive
//               ? const Color(0xFF00C853).withOpacity(0.2)
//               : Colors.white.withOpacity(0.05),
//           borderRadius: BorderRadius.circular(16),
//           border: Border.all(
//             color: isActive
//                 ? const Color(0xFF00C853).withOpacity(0.5)
//                 : Colors.white.withOpacity(0.1),
//             width: 1,
//           ),
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Icon(
//               icon,
//               color: isActive ? const Color(0xFF00C853) : Colors.white70,
//               size: 24,
//             ),
//             const SizedBox(height: 6),
//             Text(
//               label,
//               style: TextStyle(
//                 color: isActive ? const Color(0xFF00C853) : Colors.white70,
//                 fontSize: 12,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildWatchButton() {
//     return Container(
//       width: double.infinity,
//       height: 60,
//       decoration: BoxDecoration(
//         gradient: const LinearGradient(
//           colors: [Color(0xFF00C853), Color(0xFF4CAF50)],
//           begin: Alignment.centerLeft,
//           end: Alignment.centerRight,
//         ),
//         borderRadius: BorderRadius.circular(30),
//         boxShadow: [
//           BoxShadow(
//             color: const Color(0xFF00C853).withOpacity(0.4),
//             spreadRadius: 0,
//             blurRadius: 20,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: ElevatedButton.icon(
//         onPressed: () => _showPlayDialog(),
//         icon: const Icon(Icons.play_arrow, size: 28),
//         label: const Text(
//           "مشاهدة الآن",
//           style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//         ),
//         style: ElevatedButton.styleFrom(
//           backgroundColor: Colors.transparent,
//           shadowColor: Colors.transparent,
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(30),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTabsSection(bool isLandscape, double screenHeight) {
//     return DefaultTabController(
//       length: 3,
//       child: Column(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Colors.white.withOpacity(0.05),
//               borderRadius: BorderRadius.circular(25),
//             ),
//             child: const TabBar(
//               tabs: [
//                 Tab(text: "القصة"),
//                 Tab(text: "الطاقم"),
//                 Tab(text: "التعليقات"),
//               ],
//               indicator: BoxDecoration(
//                 color: Color(0xFF00C853),
//                 borderRadius: BorderRadius.all(Radius.circular(25)),
//               ),
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.white60,
//               labelStyle: TextStyle(fontWeight: FontWeight.bold),
//               dividerColor: Colors.transparent,
//             ),
//           ),
//           const SizedBox(height: 20),
//           SizedBox(
//             height: isLandscape ? screenHeight * 0.3 : 250,
//             child: TabBarView(
//               children: [
//                 _buildStoryTab(),
//                 _buildCastTab(),
//                 _buildCommentsTab(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildStoryTab() {
//     return SingleChildScrollView(
//       child: Container(
//         padding: const EdgeInsets.all(16),
//         decoration: BoxDecoration(
//           color: Colors.white.withOpacity(0.02),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: const Text(
//           "هذا فيلم مثير يحكي قصة بطل شجاع يواجه تحديات كبيرة في رحلته لإنقاذ العالم. القصة مليئة بالإثارة والتشويق، مع مؤثرات بصرية رائعة وأداء تمثيلي متميز من جميع النجوم. الفيلم يجمع بين الأكشن والدراما بطريقة مبدعة تجعل المشاهد متشوقاً لمعرفة ما سيحدث في كل مشهد.",
//           style: TextStyle(
//             color: Colors.white70,
//             fontSize: 16,
//             height: 1.6,
//             letterSpacing: 0.5,
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildCastTab() {
//     return ListView(
//       children: [
//         _buildCastMember("روبرت داوني جونيور", "البطل الرئيسي"),
//         _buildCastMember("سكارليت جوهانسون", "البطلة"),
//         _buildCastMember("كريس إيفانز", "الشخصية المساعدة"),
//         _buildCastMember("مارك رافالو", "العالم"),
//       ],
//     );
//   }

//   Widget _buildCastMember(String name, String role) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 12),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.05),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Row(
//         children: [
//           CircleAvatar(
//             radius: 25,
//             backgroundColor: Colors.white.withOpacity(0.1),
//             child: const Icon(Icons.person, color: Colors.white60),
//           ),
//           const SizedBox(width: 16),
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   role,
//                   style: const TextStyle(color: Colors.white60, fontSize: 14),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _buildCommentsTab() {
//     return ListView(
//       children: [
//         _buildComment("أحمد محمد", "فيلم رائع جداً! أنصح بمشاهدته", 5),
//         _buildComment("فاطمة علي", "قصة مثيرة ومؤثرات بصرية مذهلة", 4),
//         _buildComment("محمد حسن", "من أفضل الأفلام التي شاهدتها هذا العام", 5),
//       ],
//     );
//   }

//   Widget _buildComment(String name, String comment, int rating) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.05),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 20,
//                 backgroundColor: const Color(0xFF00C853),
//                 child: Text(
//                   name[0],
//                   style: const TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               const SizedBox(width: 12),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       name,
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Row(
//                       children: List.generate(
//                         5,
//                         (index) => Icon(
//                           index < rating ? Icons.star : Icons.star_border,
//                           color: Colors.amber,
//                           size: 16,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 12),
//           Text(
//             comment,
//             style: const TextStyle(
//               color: Colors.white70,
//               fontSize: 14,
//               height: 1.4,
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   // Dialog Methods
//   void _showPlayDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text(
//           "تشغيل الفيلم",
//           style: TextStyle(color: Colors.white),
//         ),
//         content: const Text(
//           "اختر جودة التشغيل:",
//           style: TextStyle(color: Colors.white70),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "720p",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "1080p",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("4K", style: TextStyle(color: Color(0xFF00C853))),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showRatingDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text("قيّم الفيلم", style: TextStyle(color: Colors.white)),
//         content: StatefulBuilder(
//           builder: (context, setDialogState) => Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: List.generate(5, (index) {
//                   return GestureDetector(
//                     onTap: () {
//                       setDialogState(() {
//                         _userRating = (index + 1).toDouble();
//                       });
//                     },
//                     child: Icon(
//                       index < _userRating ? Icons.star : Icons.star_border,
//                       color: Colors.amber,
//                       size: 40,
//                     ),
//                   );
//                 }),
//               ),
//               const SizedBox(height: 16),
//               Text(
//                 "تقييمك: ${_userRating.toStringAsFixed(1)}",
//                 style: const TextStyle(color: Colors.white70),
//               ),
//             ],
//           ),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("إلغاء", style: TextStyle(color: Colors.white60)),
//           ),
//           TextButton(
//             onPressed: () {
//               setState(() {});
//               Navigator.pop(context);
//             },
//             child: const Text(
//               "حفظ",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showShareDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text(
//           "مشاركة الفيلم",
//           style: TextStyle(color: Colors.white),
//         ),
//         content: const Text(
//           "اختر طريقة المشاركة:",
//           style: TextStyle(color: Colors.white70),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "واتساب",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "تويتر",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "نسخ الرابط",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showDownloadDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text(
//           "تحميل الفيلم",
//           style: TextStyle(color: Colors.white),
//         ),
//         content: const Text(
//           "اختر جودة التحميل:",
//           style: TextStyle(color: Colors.white70),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "720p (2GB)",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "1080p (4GB)",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showPlaylistDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text(
//           "إضافة للقائمة",
//           style: TextStyle(color: Colors.white),
//         ),
//         content: const Text(
//           "تم إضافة الفيلم لقائمتك بنجاح!",
//           style: TextStyle(color: Colors.white70),
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "موافق",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showCommentDialog() {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         backgroundColor: const Color(0xFF1A1A1A),
//         title: const Text("إضافة تعليق", style: TextStyle(color: Colors.white)),
//         content: const TextField(
//           style: TextStyle(color: Colors.white),
//           decoration: InputDecoration(
//             hintText: "اكتب تعليقك هنا...",
//             hintStyle: TextStyle(color: Colors.white60),
//             border: OutlineInputBorder(),
//           ),
//           maxLines: 3,
//         ),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("إلغاء", style: TextStyle(color: Colors.white60)),
//           ),
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text(
//               "نشر",
//               style: TextStyle(color: Color(0xFF00C853)),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
