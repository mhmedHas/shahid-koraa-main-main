// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// // import 'package:korrrrrrrr/screens/anime_screens/AnimePage.dart';
// // import 'package:korrrrrrrr/screens/chanal_screens/Channel.dart';
// // import 'package:korrrrrrrr/screens/film_screens/filmPage.dart';
// // import 'package:korrrrrrrr/screens/match_screens/widget/match_card.dart';
// // import 'package:korrrrrrrr/serias_screens/SeriesPage.dart';
// // import 'package:korrrrrrrr/widget/custom_Nav_Bar.dart';

// // class MatchesPage extends StatefulWidget {
// //   const MatchesPage({super.key});

// //   @override
// //   State<MatchesPage> createState() => _MatchesPageState();
// // }

// // class _MatchesPageState extends State<MatchesPage> {
// //   int _selectedIndex = 2;

// //   final List<Widget> _pages = [
// //     const ChannelsPage(),
// //     FilmPage(),
// //     const MatchesTabContent(),
// //     AnimePage(),
// //     SeriesPage(),
// //   ];

// //   Future<bool> _onWillPop() async {
// //     bool? exitApp = await showDialog(
// //       context: context,
// //       barrierDismissible: false,
// //       builder: (context) => AlertDialog(
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
// //         backgroundColor: Colors.grey[900],
// //         title: Row(
// //           children: [
// //             const Icon(
// //               Icons.warning_amber_rounded,
// //               color: Colors.orange,
// //               size: 28,
// //             ),
// //             const SizedBox(width: 8),
// //             const Text(
// //               "تأكيد الخروج",
// //               style: TextStyle(
// //                 color: Colors.white,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //           ],
// //         ),
// //         content: const Text(
// //           "هل أنت متأكد أنك تريد الخروج من التطبيق؟",
// //           style: TextStyle(color: Colors.white70, fontSize: 16),
// //         ),
// //         actionsAlignment: MainAxisAlignment.spaceEvenly,
// //         actions: [
// //           ElevatedButton(
// //             style: ElevatedButton.styleFrom(
// //               backgroundColor: Colors.redAccent,
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //             ),
// //             onPressed: () => Navigator.of(context).pop(false),
// //             child: const Text("إلغاء", style: TextStyle(color: Colors.black)),
// //           ),
// //           OutlinedButton(
// //             style: OutlinedButton.styleFrom(
// //               backgroundColor: Colors.green,
// //               side: const BorderSide(color: Colors.green),
// //               shape: RoundedRectangleBorder(
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //             ),
// //             onPressed: () => Navigator.of(context).pop(true),
// //             child: const Text("نعم", style: TextStyle(color: Colors.black)),
// //           ),
// //         ],
// //       ),
// //     );
// //     return exitApp ?? false;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return WillPopScope(
// //       onWillPop: _onWillPop,
// //       child: Scaffold(
// //         body: _pages[_selectedIndex],
// //         bottomNavigationBar: CustomNavBar(
// //           selectedIndex: _selectedIndex,
// //           onTap: (int index) {
// //             setState(() {
// //               _selectedIndex = index;
// //             });
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class MatchesTabContent extends StatelessWidget {
// //   const MatchesTabContent({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 3,
// //       initialIndex: 1,
// //       child: Scaffold(
// //         backgroundColor: Colors.black,
// //         appBar: AppBar(
// //           backgroundColor: Colors.black,
// //           centerTitle: true,
// //           toolbarHeight: 56,
// //           title: Image.asset(
// //             'assets/images/nn.png',
// //             height: kToolbarHeight,
// //             fit: BoxFit.contain,
// //           ),
// //           bottom: const TabBar(
// //             labelColor: Colors.white,
// //             unselectedLabelColor: Colors.grey,
// //             indicatorColor: Colors.red,
// //             tabs: [
// //               Tab(text: 'الغد'),
// //               Tab(text: 'اليوم'),
// //               Tab(text: 'أمس'),
// //             ],
// //           ),
// //         ),
// //         body: const TabBarView(
// //           children: [TomorrowMatches(), TodayMatches(), YesterdayMatches()],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class TodayMatches extends StatelessWidget {
// //   const TodayMatches({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final now = DateTime.now();
// //     final startOfDay = DateTime(now.year, now.month, now.day);
// //     final endOfDay = startOfDay.add(const Duration(days: 1));

// //     return StreamBuilder<QuerySnapshot>(
// //       stream: FirebaseFirestore.instance
// //           .collection('live_streams')
// //           .where(
// //             'timestamp',
// //             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
// //           )
// //           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
// //           .snapshots(),
// //       builder: (context, snapshot) {
// //         if (snapshot.hasError) {
// //           return Center(
// //             child: Text(
// //               'Error: ${snapshot.error}',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return const Center(child: CircularProgressIndicator());
// //         }
// //         if (snapshot.data!.docs.isEmpty) {
// //           return const Center(
// //             child: Text(
// //               'لا توجد مباريات اليوم',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }

// //         final matches = snapshot.data!.docs.toList();
// //         final now = DateTime.now();

// //         matches.sort((a, b) {
// //           final dataA = a.data() as Map<String, dynamic>;
// //           final dataB = b.data() as Map<String, dynamic>;

// //           final matchTimeA = (dataA['timestamp'] as Timestamp).toDate();
// //           final matchTimeB = (dataB['timestamp'] as Timestamp).toDate();

// //           final matchEndTimeA = matchTimeA.add(const Duration(minutes: 90));
// //           final matchEndTimeB = matchTimeB.add(const Duration(minutes: 90));

// //           int statusA = _getMatchStatusPriority(now, matchTimeA, matchEndTimeA);
// //           int statusB = _getMatchStatusPriority(now, matchTimeB, matchEndTimeB);

// //           if (statusA != statusB) return statusA.compareTo(statusB);
// //           return matchTimeA.compareTo(matchTimeB);
// //         });

// //         return ListView.builder(
// //           physics: const AlwaysScrollableScrollPhysics(),
// //           padding: const EdgeInsets.all(8),
// //           itemCount: matches.length,
// //           itemBuilder: (context, index) {
// //             final match = matches[index];
// //             return _buildMatchCard(match);
// //           },
// //         );
// //       },
// //     );
// //   }

// //   int _getMatchStatusPriority(
// //     DateTime now,
// //     DateTime matchTime,
// //     DateTime matchEndTime,
// //   ) {
// //     if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) return 0; // مباشر
// //     final oneHourFromNow = now.add(const Duration(hours: 1));
// //     if (matchTime.isAfter(now) && matchTime.isBefore(oneHourFromNow))
// //       return 1; // قريب يبدأ
// //     if (matchTime.isAfter(now)) return 2; // لم يبدأ بعد
// //     return 3; // انتهى
// //   }

// //   Widget _buildMatchCard(DocumentSnapshot match) {
// //     final data = match.data() as Map<String, dynamic>;
// //     return MatchCard(
// //       teamA: data['team1_name'] ?? '',
// //       logoA: data['team1_image_url'] ?? '',
// //       tV: data['channel_name']?.toString() ?? 'غير معرف',
// //       teamB: data['team2_name'] ?? '',
// //       logoB: data['team2_image_url'] ?? '',
// //       moalek: data['commentator'] ?? 'غير معرف',
// //       time: data['time'] ?? '',
// //       Link: data['match_link'] ?? '',
// //       matchTime: (data['timestamp'] as Timestamp).toDate(),
// //     );
// //   }
// // }

// // class TomorrowMatches extends StatelessWidget {
// //   const TomorrowMatches({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final tomorrow = DateTime.now().add(const Duration(days: 1));
// //     final startOfDay = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
// //     final endOfDay = startOfDay.add(const Duration(days: 1));

// //     return StreamBuilder<QuerySnapshot>(
// //       stream: FirebaseFirestore.instance
// //           .collection('live_streams')
// //           .where(
// //             'timestamp',
// //             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
// //           )
// //           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
// //           .orderBy('timestamp')
// //           .snapshots(),
// //       builder: (context, snapshot) {
// //         if (snapshot.hasError) {
// //           return Center(
// //             child: Text(
// //               'Error: ${snapshot.error}',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return const Center(child: CircularProgressIndicator());
// //         }
// //         if (snapshot.data!.docs.isEmpty) {
// //           return const Center(
// //             child: Text(
// //               'لا توجد مباريات غداً',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }
// //         return ListView.builder(
// //           physics: const AlwaysScrollableScrollPhysics(),
// //           padding: const EdgeInsets.all(8),
// //           itemCount: snapshot.data!.docs.length,
// //           itemBuilder: (context, index) {
// //             final match = snapshot.data!.docs[index];
// //             final data = match.data() as Map<String, dynamic>;
// //             return MatchCard(
// //               teamA: data['team1_name'] ?? '',
// //               logoA: data['team1_image_url'] ?? '',
// //               moalek: data['commentator'] ?? 'غير معرف',
// //               teamB: data['team2_name'] ?? '',
// //               logoB: data['team2_image_url'] ?? '',
// //               tV: data['channel_name']?.toString() ?? 'غير معرف',
// //               time: data['time'] ?? '',
// //               Link: data['match_link'] ?? '',
// //               matchTime: (data['timestamp'] as Timestamp).toDate(),
// //             );
// //           },
// //         );
// //       },
// //     );
// //   }
// // }

// // class YesterdayMatches extends StatelessWidget {
// //   const YesterdayMatches({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final yesterday = DateTime.now().subtract(const Duration(days: 1));
// //     final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
// //     final endOfDay = startOfDay.add(const Duration(days: 1));

// //     return StreamBuilder<QuerySnapshot>(
// //       stream: FirebaseFirestore.instance
// //           .collection('live_streams')
// //           .where(
// //             'timestamp',
// //             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
// //           )
// //           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
// //           .orderBy('timestamp')
// //           .snapshots(),
// //       builder: (context, snapshot) {
// //         if (snapshot.hasError) {
// //           return Center(
// //             child: Text(
// //               'Error: ${snapshot.error}',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }
// //         if (snapshot.connectionState == ConnectionState.waiting) {
// //           return const Center(child: CircularProgressIndicator());
// //         }
// //         if (snapshot.data!.docs.isEmpty) {
// //           return const Center(
// //             child: Text(
// //               'لا توجد مباريات أمس',
// //               style: TextStyle(color: Colors.white),
// //             ),
// //           );
// //         }
// //         return ListView.builder(
// //           physics: const AlwaysScrollableScrollPhysics(),
// //           padding: const EdgeInsets.all(8),
// //           itemCount: snapshot.data!.docs.length,
// //           itemBuilder: (context, index) {
// //             final match = snapshot.data!.docs[index];
// //             final data = match.data() as Map<String, dynamic>;
// //             return MatchCard(
// //               Link: data['match_link'] ?? '',
// //               teamA: data['team1_name'] ?? '',
// //               logoA: data['team1_image_url'] ?? '',
// //               moalek: data['commentator'] ?? 'غير معرف',
// //               teamB: data['team2_name'] ?? '',
// //               logoB: data['team2_image_url'] ?? '',
// //               tV: data['channel_name']?.toString() ?? 'غير معرف',
// //               time: data['match_time'].toString(),
// //               matchTime: (data['timestamp'] as Timestamp).toDate(),
// //             );
// //           },
// //         );
// //       },
// //     );
// //   }
// // }
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:korrrrrrrr/removed/anime_screens/AnimePage.dart';
// import 'package:korrrrrrrr/screens/chanal_screens/Channel.dart';
// import 'package:korrrrrrrr/removed/film_screens/filmPage.dart';
// import 'package:korrrrrrrr/screens/match_screens/widget/match_card.dart';
// import 'package:korrrrrrrr/removed/serias_screens/SeriesPage.dart';
// import 'package:korrrrrrrr/widget/custom_Nav_Bar.dart';

// class MatchesPage extends StatefulWidget {
//   const MatchesPage({super.key});

//   @override
//   State<MatchesPage> createState() => _MatchesPageState();
// }

// class _MatchesPageState extends State<MatchesPage> {
//   int _selectedIndex = 0;

//   final List<Widget> _pages = [const ChannelsPage(), const MatchesTabContent()];

//   Future<bool> _onWillPop() async {
//     bool? exitApp = await showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) => AlertDialog(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//         backgroundColor: Colors.grey[900],
//         title: Row(
//           children: const [
//             Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 28),
//             SizedBox(width: 8),
//             Text(
//               "تأكيد الخروج",
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//         content: const Text(
//           "هل أنت متأكد أنك تريد الخروج من التطبيق؟",
//           style: TextStyle(color: Colors.white70, fontSize: 16),
//         ),
//         actionsAlignment: MainAxisAlignment.spaceEvenly,
//         actions: [
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
//             onPressed: () => Navigator.of(context).pop(false),
//             child: const Text("إلغاء", style: TextStyle(color: Colors.black)),
//           ),
//           OutlinedButton(
//             style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
//             onPressed: () => Navigator.of(context).pop(true),
//             child: const Text("نعم", style: TextStyle(color: Colors.black)),
//           ),
//         ],
//       ),
//     );
//     return exitApp ?? false;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: _onWillPop,
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: _pages[_selectedIndex],
//         bottomNavigationBar: CustomNavBar(
//           selectedIndex: _selectedIndex,
//           onTap: (int index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//         ),
//       ),
//     );
//   }
// }

// class MatchesTabContent extends StatelessWidget {
//   const MatchesTabContent({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       initialIndex: 1,
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         appBar: PreferredSize(
//           preferredSize: const Size.fromHeight(110),
//           child: AppBar(
//             backgroundColor: Colors.black,
//             centerTitle: true,
//             elevation: 0,
//             title: Image.asset(
//               'assets/images/nn.png',
//               height: kToolbarHeight,
//               fit: BoxFit.contain,
//             ),
//             bottom: const TabBar(
//               labelColor: Colors.white,
//               unselectedLabelColor: Colors.grey,
//               indicatorColor: Colors.red,
//               tabs: [
//                 Tab(text: 'الغد'),
//                 Tab(text: 'اليوم'),
//                 Tab(text: 'أمس'),
//               ],
//             ),
//           ),
//         ),
//         body: const TabBarView(
//           children: [TomorrowMatches(), TodayMatches(), YesterdayMatches()],
//         ),
//       ),
//     );
//   }
// }

// // =================== Today Matches ===================
// class TodayMatches extends StatelessWidget {
//   const TodayMatches({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final now = DateTime.now();
//     final startOfDay = DateTime(now.year, now.month, now.day);
//     final endOfDay = startOfDay.add(const Duration(days: 1));

//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('live_streams')
//           .where(
//             'timestamp',
//             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
//           )
//           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Center(
//             child: Text(
//               'Error: ${snapshot.error}',
//               style: const TextStyle(color: Colors.white),
//             ),
//           );
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.data!.docs.isEmpty) {
//           return const Center(
//             child: Text(
//               'لا توجد مباريات اليوم',
//               style: TextStyle(color: Colors.white),
//             ),
//           );
//         }

//         final matches = snapshot.data!.docs.toList();
//         final now = DateTime.now();

//         matches.sort((a, b) {
//           final dataA = a.data() as Map<String, dynamic>;
//           final dataB = b.data() as Map<String, dynamic>;

//           final matchTimeA = (dataA['timestamp'] as Timestamp).toDate();
//           final matchTimeB = (dataB['timestamp'] as Timestamp).toDate();

//           final matchEndTimeA = matchTimeA.add(const Duration(minutes: 90));
//           final matchEndTimeB = matchTimeB.add(const Duration(minutes: 90));

//           int statusA = _getMatchStatusPriority(now, matchTimeA, matchEndTimeA);
//           int statusB = _getMatchStatusPriority(now, matchTimeB, matchEndTimeB);

//           if (statusA != statusB) return statusA.compareTo(statusB);
//           return matchTimeA.compareTo(matchTimeB);
//         });

//         return ListView.builder(
//           physics: const BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(8),
//           itemCount: matches.length,
//           itemBuilder: (context, index) {
//             final match = matches[index];
//             final data = match.data() as Map<String, dynamic>;
//             return MatchCard(
//               teamA: data['team1_name'] ?? '',
//               logoA: data['team1_image_url'] ?? '',
//               tV: data['channel_name']?.toString() ?? 'غير معرف',
//               teamB: data['team2_name'] ?? '',
//               logoB: data['team2_image_url'] ?? '',
//               moalek: data['commentator'] ?? 'غير معرف',
//               time: data['time'] ?? '',
//               Link: data['match_link'] ?? '',
//               matchTime: (data['timestamp'] as Timestamp).toDate(),
//             );
//           },
//         );
//       },
//     );
//   }

//   int _getMatchStatusPriority(
//     DateTime now,
//     DateTime matchTime,
//     DateTime matchEndTime,
//   ) {
//     if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) return 0; // مباشر
//     final oneHourFromNow = now.add(const Duration(hours: 1));
//     if (matchTime.isAfter(now) && matchTime.isBefore(oneHourFromNow))
//       return 1; // قريب يبدأ
//     if (matchTime.isAfter(now)) return 2; // لم يبدأ بعد
//     return 3; // انتهى
//   }
// }

// // =================== Tomorrow Matches ===================
// class TomorrowMatches extends StatelessWidget {
//   const TomorrowMatches({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final tomorrow = DateTime.now().add(const Duration(days: 1));
//     final startOfDay = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
//     final endOfDay = startOfDay.add(const Duration(days: 1));

//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('live_streams')
//           .where(
//             'timestamp',
//             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
//           )
//           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
//           .orderBy('timestamp')
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Center(
//             child: Text(
//               'Error: ${snapshot.error}',
//               style: const TextStyle(color: Colors.white),
//             ),
//           );
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.data!.docs.isEmpty) {
//           return const Center(
//             child: Text(
//               'لا توجد مباريات غداً',
//               style: TextStyle(color: Colors.white),
//             ),
//           );
//         }
//         return ListView.builder(
//           physics: const BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(8),
//           itemCount: snapshot.data!.docs.length,
//           itemBuilder: (context, index) {
//             final data =
//                 snapshot.data!.docs[index].data() as Map<String, dynamic>;
//             return MatchCard(
//               teamA: data['team1_name'] ?? '',
//               logoA: data['team1_image_url'] ?? '',
//               moalek: data['commentator'] ?? 'غير معرف',
//               teamB: data['team2_name'] ?? '',
//               logoB: data['team2_image_url'] ?? '',
//               tV: data['channel_name']?.toString() ?? 'غير معرف',
//               time: data['time'] ?? '',
//               Link: data['match_link'] ?? '',
//               matchTime: (data['timestamp'] as Timestamp).toDate(),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// // =================== Yesterday Matches ===================
// class YesterdayMatches extends StatelessWidget {
//   const YesterdayMatches({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final yesterday = DateTime.now().subtract(const Duration(days: 1));
//     final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
//     final endOfDay = startOfDay.add(const Duration(days: 1));

//     return StreamBuilder<QuerySnapshot>(
//       stream: FirebaseFirestore.instance
//           .collection('live_streams')
//           .where(
//             'timestamp',
//             isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
//           )
//           .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
//           .orderBy('timestamp')
//           .snapshots(),
//       builder: (context, snapshot) {
//         if (snapshot.hasError) {
//           return Center(
//             child: Text(
//               'Error: ${snapshot.error}',
//               style: const TextStyle(color: Colors.white),
//             ),
//           );
//         }
//         if (snapshot.connectionState == ConnectionState.waiting) {
//           return const Center(child: CircularProgressIndicator());
//         }
//         if (snapshot.data!.docs.isEmpty) {
//           return const Center(
//             child: Text(
//               'لا توجد مباريات أمس',
//               style: TextStyle(color: Colors.white),
//             ),
//           );
//         }
//         return ListView.builder(
//           physics: const BouncingScrollPhysics(),
//           padding: const EdgeInsets.all(8),
//           itemCount: snapshot.data!.docs.length,
//           itemBuilder: (context, index) {
//             final data =
//                 snapshot.data!.docs[index].data() as Map<String, dynamic>;
//             return MatchCard(
//               Link: data['match_link'] ?? '',
//               teamA: data['team1_name'] ?? '',
//               logoA: data['team1_image_url'] ?? '',
//               moalek: data['commentator'] ?? 'غير معرف',
//               teamB: data['team2_name'] ?? '',
//               logoB: data['team2_image_url'] ?? '',
//               tV: data['channel_name']?.toString() ?? 'غير معرف',
//               time: data['time']?.toString() ?? '',
//               matchTime: (data['timestamp'] as Timestamp).toDate(),
//             );
//           },
//         );
//       },
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:korrrrrrrr/screens/chanal_screens/Channel.dart';
import 'package:korrrrrrrr/screens/match_screens/widget/match_card.dart';
import 'package:korrrrrrrr/widget/custom_Nav_Bar.dart';

class MatchesPage extends StatefulWidget {
  const MatchesPage({super.key});

  @override
  State<MatchesPage> createState() => _MatchesPageState();
}

class _MatchesPageState extends State<MatchesPage> {
  int _selectedIndex = 1;

  final List<Widget> _pages = [const ChannelsPage(), const MatchesTabContent()];

  Future<bool> _onWillPop() async {
    bool? exitApp = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        backgroundColor: Colors.grey[900],
        title: Row(
          children: const [
            Icon(Icons.warning_amber_rounded, color: Colors.orange, size: 28),
            SizedBox(width: 8),
            Text(
              "تأكيد الخروج",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        content: const Text(
          "هل أنت متأكد أنك تريد الخروج من التطبيق؟",
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        actionsAlignment: MainAxisAlignment.spaceEvenly,
        actions: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text("إلغاء", style: TextStyle(color: Colors.black)),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () => Navigator.of(context).pop(true),
            child: const Text("نعم", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
    );
    return exitApp ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: _pages[_selectedIndex],
        bottomNavigationBar: SafeArea(
          // أضف SafeArea هنا
          child: CustomNavBar(
            selectedIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class MatchesTabContent extends StatelessWidget {
  const MatchesTabContent({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(110),
          child: AppBar(
            backgroundColor: Colors.black,
            centerTitle: true,
            elevation: 0,
            title: Image.asset(
              'assets/images/nn.png',
              height: kToolbarHeight,
              fit: BoxFit.contain,
            ),
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.red,
              tabs: [
                Tab(text: 'الغد'),
                Tab(text: 'اليوم'),
                Tab(text: 'أمس'),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [TomorrowMatches(), TodayMatches(), YesterdayMatches()],
        ),
      ),
    );
  }
}

// =================== Today Matches ===================
class TodayMatches extends StatelessWidget {
  const TodayMatches({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('live_streams')
          .where(
            'timestamp',
            isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
          )
          .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'لا توجد مباريات اليوم',
              style: TextStyle(color: Colors.white),
            ),
          );
        }

        final matches = snapshot.data!.docs.toList();
        final now = DateTime.now();

        matches.sort((a, b) {
          final dataA = a.data() as Map<String, dynamic>;
          final dataB = b.data() as Map<String, dynamic>;

          final matchTimeA = (dataA['timestamp'] as Timestamp).toDate();
          final matchTimeB = (dataB['timestamp'] as Timestamp).toDate();

          final matchEndTimeA = matchTimeA.add(const Duration(minutes: 90));
          final matchEndTimeB = matchTimeB.add(const Duration(minutes: 90));

          int statusA = _getMatchStatusPriority(now, matchTimeA, matchEndTimeA);
          int statusB = _getMatchStatusPriority(now, matchTimeB, matchEndTimeB);

          if (statusA != statusB) return statusA.compareTo(statusB);
          return matchTimeA.compareTo(matchTimeB);
        });

        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: matches.length,
          itemBuilder: (context, index) {
            final match = matches[index];
            final data = match.data() as Map<String, dynamic>;

            return MatchCard(
              streamId: match.id, // 🔥 تمرير ID المباراة
              teamA: data['team1_name'] ?? '',
              logoA: data['team1_image_url'] ?? '',
              tV: data['channel_name']?.toString() ?? 'غير معرف',
              teamB: data['team2_name'] ?? '',
              logoB: data['team2_image_url'] ?? '',
              moalek: data['commentator'] ?? 'غير معرف',
              time: data['time'] ?? '',
              matchTime: (data['timestamp'] as Timestamp).toDate(),
            );
          },
        );
      },
    );
  }

  int _getMatchStatusPriority(
    DateTime now,
    DateTime matchTime,
    DateTime matchEndTime,
  ) {
    if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) return 0;
    final oneHourFromNow = now.add(const Duration(hours: 1));
    if (matchTime.isAfter(now) && matchTime.isBefore(oneHourFromNow)) return 1;
    if (matchTime.isAfter(now)) return 2;
    return 3;
  }
}

// =================== Tomorrow Matches ===================
class TomorrowMatches extends StatelessWidget {
  const TomorrowMatches({super.key});

  @override
  Widget build(BuildContext context) {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    final startOfDay = DateTime(tomorrow.year, tomorrow.month, tomorrow.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('live_streams')
          .where(
            'timestamp',
            isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
          )
          .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
          .orderBy('timestamp')
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'لا توجد مباريات غداً',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            final data =
                snapshot.data!.docs[index].data() as Map<String, dynamic>;
            return MatchCard(
              streamId: snapshot.data!.docs[index].id, // 🔥 تمرير ID المباراة
              teamA: data['team1_name'] ?? '',
              logoA: data['team1_image_url'] ?? '',
              moalek: data['commentator'] ?? 'غير معرف',
              teamB: data['team2_name'] ?? '',
              logoB: data['team2_image_url'] ?? '',
              tV: data['channel_name']?.toString() ?? 'غير معرف',
              time: data['time'] ?? '',
              matchTime: (data['timestamp'] as Timestamp).toDate(),
            );
          },
        );
      },
    );
  }
}

// =================== Yesterday Matches ===================
class YesterdayMatches extends StatelessWidget {
  const YesterdayMatches({super.key});

  @override
  Widget build(BuildContext context) {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    final startOfDay = DateTime(yesterday.year, yesterday.month, yesterday.day);
    final endOfDay = startOfDay.add(const Duration(days: 1));

    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('live_streams')
          .where(
            'timestamp',
            isGreaterThanOrEqualTo: Timestamp.fromDate(startOfDay),
          )
          .where('timestamp', isLessThan: Timestamp.fromDate(endOfDay))
          .orderBy('timestamp')
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text(
              'Error: ${snapshot.error}',
              style: const TextStyle(color: Colors.white),
            ),
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }
        if (snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text(
              'لا توجد مباريات أمس',
              style: TextStyle(color: Colors.white),
            ),
          );
        }
        return ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.all(8),
          itemCount: snapshot.data!.docs.length,
          itemBuilder: (context, index) {
            final data =
                snapshot.data!.docs[index].data() as Map<String, dynamic>;
            return MatchCard(
              streamId: snapshot.data!.docs[index].id, // 🔥 تمرير ID المباراة
              teamA: data['team1_name'] ?? '',
              logoA: data['team1_image_url'] ?? '',
              moalek: data['commentator'] ?? 'غير معرف',
              teamB: data['team2_name'] ?? '',
              logoB: data['team2_image_url'] ?? '',
              tV: data['channel_name']?.toString() ?? 'غير معرف',
              time: data['time']?.toString() ?? '',
              matchTime: (data['timestamp'] as Timestamp).toDate(),
            );
          },
        );
      },
    );
  }
}
