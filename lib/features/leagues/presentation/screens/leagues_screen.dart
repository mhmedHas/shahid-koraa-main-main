// // import 'package:flutter/material.dart';
// // import 'package:koraa/screens/match_screens/matches.dart';
// // import 'package:koraa/widget/appbar.dart';

// // class LeagueItem {
// //   final String name;
// //   final String icon;

// //   LeagueItem({required this.name, required this.icon});
// // }

// // class LeaguesPage extends StatefulWidget {
// //   const LeaguesPage({super.key});

// //   @override
// //   State<LeaguesPage> createState() => _LeaguesPageState();
// // }

// // class _LeaguesPageState extends State<LeaguesPage> {
// //   final PageController _pageController = PageController(viewportFraction: 0.8);
// //   int _selectedIndex = 0;
// //   double _currentPage = 0;

// //   final List<LeagueItem> leagues = [
// //     LeagueItem(
// //       name: 'Bundesliga',
// //       icon: 'assets/dawryat/31BVAwrO1tL-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'LaLiga',
// //       icon: 'assets/dawryat/EnglishPremierLeague-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'Premier League',
// //       icon: 'assets/dawryat/images-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'Serie A',
// //       icon: 'assets/dawryat/Laliga-v-600x600-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'Ligue 1',
// //       icon: 'assets/dawryat/Ligue1_logo-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'MLS',
// //       icon:
// //           'assets/dawryat/MLS_crest_logo_RGB_gradient.svg-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'NBA',
// //       icon:
// //           'assets/dawryat/National_Football_League_logo.svg-removebg-preview.png',
// //     ),
// //     LeagueItem(
// //       name: 'NFL',
// //       icon: 'assets/dawryat/Ligue1_logo-removebg-preview.png',
// //     ),
// //   ];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _pageController.addListener(() {
// //       setState(() {
// //         _currentPage = _pageController.page ?? 0;
// //         _selectedIndex = _currentPage.round();
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _pageController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final selectedLeague = leagues[_selectedIndex];
// //     final screenHeight = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //       backgroundColor: const Color(0xFFF5F5F5),
// //       appBar: const CustomAppBar(title: " ⚽ الدوريات"),
// //       body: Container(
// //         decoration: BoxDecoration(
// //           gradient: LinearGradient(
// //             begin: Alignment.topCenter,
// //             end: Alignment.bottomCenter,
// //             colors: [Colors.grey.shade800, Colors.brown.shade500],
// //           ),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             // الكاروسيل
// //             SizedBox(
// //               height: screenHeight * 0.4,
// //               child: PageView.builder(
// //                 controller: _pageController,
// //                 itemCount: leagues.length,
// //                 itemBuilder: (context, index) {
// //                   final difference = (index - _currentPage).abs();
// //                   final scale = 1 - (difference * 0.2).clamp(0.0, 0.3);
// //                   final opacity = 1 - (difference * 0.5).clamp(0.0, 0.5);

// //                   return AnimatedContainer(
// //                     duration: const Duration(milliseconds: 10),
// //                     child: Transform.scale(
// //                       scale: scale,
// //                       child: Opacity(
// //                         opacity: opacity,
// //                         child: Column(
// //                           mainAxisAlignment: MainAxisAlignment.center,
// //                           children: [
// //                             Container(
// //                               padding: const EdgeInsets.all(8),
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 boxShadow: [
// //                                   if (index == _selectedIndex)
// //                                     BoxShadow(
// //                                       color: Colors.white.withOpacity(0.5),
// //                                       blurRadius: 20,
// //                                       spreadRadius: 5,
// //                                     ),
// //                                 ],
// //                               ),
// //                               child: CircleAvatar(
// //                                 radius: index == _selectedIndex ? 110 : 60,
// //                                 backgroundColor: Colors.transparent,
// //                                 backgroundImage: AssetImage(
// //                                   leagues[index].icon,
// //                                 ),
// //                               ),
// //                             ),
// //                             const SizedBox(height: 10),
// //                             if (index == _selectedIndex)
// //                               Text(
// //                                 leagues[index].name,
// //                                 style: const TextStyle(
// //                                   color: Colors.white,
// //                                   fontSize: 20,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                               ),
// //                           ],
// //                         ),
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ),

// //             const SizedBox(height: 30),

// //             // اسم الدوري المحدد
// //             AnimatedSwitcher(
// //               duration: const Duration(milliseconds: 300),
// //               child: Text(
// //                 selectedLeague.name,
// //                 key: ValueKey<String>(selectedLeague.name),
// //                 style: const TextStyle(
// //                   color: Colors.white,
// //                   fontSize: 28,
// //                   fontWeight: FontWeight.bold,
// //                   letterSpacing: 1.2,
// //                 ),
// //               ),
// //             ),

// //             const SizedBox(height: 40),

// //             // زر عرض المباريات
// //             Padding(
// //               padding: const EdgeInsets.symmetric(horizontal: 40),
// //               child: ElevatedButton(
// //                 onPressed: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(
// //                       builder:
// //                           (_) => MatchesTabContent(
// //                             leagueName: selectedLeague.name,
// //                           ),
// //                     ),
// //                   );
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: const Color(0xFFE94560),
// //                   padding: const EdgeInsets.symmetric(
// //                     horizontal: 40,
// //                     vertical: 16,
// //                   ),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(30),
// //                   ),
// //                   elevation: 5,
// //                   shadowColor: const Color(0xFFE94560).withOpacity(0.5),
// //                 ),
// //                 child: const Text(
// //                   'عرض المباريات',
// //                   style: TextStyle(
// //                     fontSize: 18,
// //                     fontWeight: FontWeight.bold,
// //                     color: Colors.white,
// //                   ),
// //                 ),
// //               ),
// //             ),

// //             const SizedBox(height: 20),

// //             // مؤشر الصفحات
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.center,
// //               children: List.generate(
// //                 leagues.length,
// //                 (index) => Container(
// //                   width: 8,
// //                   height: 8,
// //                   margin: const EdgeInsets.symmetric(horizontal: 4),
// //                   decoration: BoxDecoration(
// //                     shape: BoxShape.circle,
// //                     color:
// //                         index == _selectedIndex
// //                             ? const Color(0xFFE94560)
// //                             : Colors.white.withOpacity(0.5),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:koraa/screens/match_screens/matches.dart';
// import 'package:koraa/widget/appbar.dart';

// class LeagueItem {
//   final String name;
//   final String icon;

//   LeagueItem({required this.name, required this.icon});
// }

// class LeaguesPage extends StatefulWidget {
//   const LeaguesPage({super.key});

//   @override
//   State<LeaguesPage> createState() => _LeaguesPageState();
// }

// class _LeaguesPageState extends State<LeaguesPage> {
//   final PageController _pageController = PageController(viewportFraction: 0.8);
//   int _selectedIndex = 0;
//   double _currentPage = 0;

//   final List<LeagueItem> leagues = [
//     LeagueItem(
//       name: 'Bundesliga',
//       icon: 'assets/dawryat/31BVAwrO1tL-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'LaLiga',
//       icon: 'assets/dawryat/EnglishPremierLeague-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'Premier League',
//       icon: 'assets/dawryat/images-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'Serie A',
//       icon: 'assets/dawryat/Laliga-v-600x600-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'Ligue 1',
//       icon: 'assets/dawryat/Ligue1_logo-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'MLS',
//       icon:
//           'assets/dawryat/MLS_crest_logo_RGB_gradient.svg-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'NBA',
//       icon:
//           'assets/dawryat/National_Football_League_logo.svg-removebg-preview.png',
//     ),
//     LeagueItem(
//       name: 'NFL',
//       icon: 'assets/dawryat/Ligue1_logo-removebg-preview.png',
//     ),
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _pageController.addListener(() {
//       setState(() {
//         _currentPage = _pageController.page ?? 0;
//         _selectedIndex = _currentPage.round();
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final selectedLeague = leagues[_selectedIndex];
//     final screenHeight = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: const Color(0xFF121212),
//       appBar: const CustomAppBar(title: "⚽ الدوريات", showBackButton: false),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topCenter,
//             end: Alignment.bottomCenter,
//             colors: [Color(0xFF121212), Color(0xFF1E1E1E)],
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // الكاروسيل
//             SizedBox(
//               height: screenHeight * 0.4,
//               child: PageView.builder(
//                 controller: _pageController,
//                 itemCount: leagues.length,
//                 itemBuilder: (context, index) {
//                   final difference = (index - _currentPage).abs();
//                   final scale = 1 - (difference * 0.2).clamp(0.0, 0.3);
//                   final opacity = 1 - (difference * 0.5).clamp(0.0, 0.5);

//                   return AnimatedContainer(
//                     duration: const Duration(milliseconds: 150),
//                     child: Transform.scale(
//                       scale: scale,
//                       child: Opacity(
//                         opacity: opacity,
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               padding: const EdgeInsets.all(8),
//                               decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 boxShadow: [
//                                   if (index == _selectedIndex)
//                                     BoxShadow(
//                                       color: Colors.white.withOpacity(0.2),
//                                       blurRadius: 20,
//                                       spreadRadius: 5,
//                                     ),
//                                 ],
//                               ),
//                               child: CircleAvatar(
//                                 radius: index == _selectedIndex ? 90 : 60,
//                                 backgroundColor: Colors.transparent,
//                                 backgroundImage: AssetImage(
//                                   leagues[index].icon,
//                                 ),
//                               ),
//                             ),
//                             const SizedBox(height: 10),
//                             if (index == _selectedIndex)
//                               Text(
//                                 leagues[index].name,
//                                 style: const TextStyle(
//                                   color: Colors.white,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),

//             const SizedBox(height: 30),

//             // اسم الدوري المحدد
//             AnimatedSwitcher(
//               duration: const Duration(milliseconds: 300),
//               child: Text(
//                 selectedLeague.name,
//                 key: ValueKey<String>(selectedLeague.name),
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 1.2,
//                 ),
//               ),
//             ),

//             const SizedBox(height: 40),

//             // زر عرض المباريات
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFE94560),
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 40,
//                     vertical: 16,
//                   ),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   elevation: 5,
//                   shadowColor: const Color(0xFFE94560).withOpacity(0.5),
//                 ),
//                 child: const Text(
//                   'عرض المباريات',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//             ),

//             const SizedBox(height: 20),

//             // مؤشر الصفحات
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: List.generate(
//                 leagues.length,
//                 (index) => Container(
//                   width: 8,
//                   height: 8,
//                   margin: const EdgeInsets.symmetric(horizontal: 4),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color:
//                         index == _selectedIndex
//                             ? const Color(0xFFE94560)
//                             : Colors.white.withOpacity(0.4),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
