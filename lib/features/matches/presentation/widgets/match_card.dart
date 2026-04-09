// // // // // // // import 'package:flutter/material.dart';

// // // // // // // class MatchCard extends StatelessWidget {
// // // // // // //   final String teamA, logoA, resultA;
// // // // // // //   final String teamB, logoB, resultB;
// // // // // // //   final String time, status;

// // // // // // //   const MatchCard({
// // // // // // //     super.key,
// // // // // // //     required this.teamA,
// // // // // // //     required this.logoA,
// // // // // // //     required this.resultA,
// // // // // // //     required this.teamB,
// // // // // // //     required this.logoB,
// // // // // // //     required this.resultB,
// // // // // // //     required this.time,
// // // // // // //     required this.status,
// // // // // // //     required Null Function() onTap,
// // // // // // //   });

// // // // // // //   Color _getStatusColor() {
// // // // // // //     switch (status.toLowerCase()) {
// // // // // // //       case 'live':
// // // // // // //         return Colors.red;
// // // // // // //       case 'قريبا':
// // // // // // //         return Colors.green;
// // // // // // //       case 'غدا':
// // // // // // //         return Colors.green;
// // // // // // //       case 'انتهى':
// // // // // // //         return Colors.grey;
// // // // // // //       default:
// // // // // // //         return Colors.blueGrey;
// // // // // // //     }
// // // // // // //   }

// // // // // // //   bool get _isLive => status.toLowerCase() == 'live';

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     final statusColor = _getStatusColor();

// // // // // // //     return Padding(
// // // // // // //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // // // // //       child: Container(
// // // // // // //         decoration: BoxDecoration(
// // // // // // //           color: Colors.white.withOpacity(0.95),
// // // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // // //         ),
// // // // // // //         padding: const EdgeInsets.all(16),
// // // // // // //         child: Column(
// // // // // // //           children: [
// // // // // // //             // الصف العلوي: الفريق A - التوقيت - الفريق B
// // // // // // //             Row(
// // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // //               children: [
// // // // // // //                 _buildTeamWithResult(logoA, teamA, resultA, isLeft: true),
// // // // // // //                 Column(
// // // // // // //                   children: [
// // // // // // //                     Text(
// // // // // // //                       time,
// // // // // // //                       style: const TextStyle(
// // // // // // //                         fontSize: 20,
// // // // // // //                         fontWeight: FontWeight.bold,
// // // // // // //                       ),
// // // // // // //                     ),
// // // // // // //                     const SizedBox(height: 4),
// // // // // // //                     _isLive
// // // // // // //                         ? _BlinkingChip(label: status, color: statusColor)
// // // // // // //                         : Chip(
// // // // // // //                             backgroundColor: statusColor,
// // // // // // //                             label: Text(
// // // // // // //                               status,
// // // // // // //                               style: const TextStyle(color: Colors.white),
// // // // // // //                             ),
// // // // // // //                           ),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //                 _buildTeamWithResult(logoB, teamB, resultB, isLeft: false),
// // // // // // //               ],
// // // // // // //             ),

// // // // // // //             const Divider(),

// // // // // // //             // معلومات القناة والمعلق
// // // // // // //             const Row(
// // // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // // //               children: [
// // // // // // //                 Row(
// // // // // // //                   children: [
// // // // // // //                     Icon(Icons.tv),
// // // // // // //                     SizedBox(width: 5),
// // // // // // //                     Text("beIN Sports HD 1"),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //                 Row(
// // // // // // //                   children: [
// // // // // // //                     Icon(Icons.mic),
// // // // // // //                     SizedBox(width: 5),
// // // // // // //                     Text("حسن العيدروس"),
// // // // // // //                   ],
// // // // // // //                 ),
// // // // // // //               ],
// // // // // // //             ),
// // // // // // //           ],
// // // // // // //         ),
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }

// // // // // // //   // ✅ تعديل: اللوجو فوق، الاسم تحته، النتيجة بجنبهم
// // // // // // //   Widget _buildTeamWithResult(
// // // // // // //     String logo,
// // // // // // //     String name,
// // // // // // //     String result, {
// // // // // // //     required bool isLeft,
// // // // // // //   }) {
// // // // // // //     return Row(
// // // // // // //       children: isLeft
// // // // // // //           ? [
// // // // // // //               Column(
// // // // // // //                 children: [
// // // // // // //                   Image.asset(logo, width: 50, height: 50),
// // // // // // //                   const SizedBox(height: 4),
// // // // // // //                   Text(
// // // // // // //                     name,
// // // // // // //                     style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //               const SizedBox(width: 30),
// // // // // // //               Text("$result", style: const TextStyle(fontSize: 25)),
// // // // // // //             ]
// // // // // // //           : [
// // // // // // //               Text("$result", style: const TextStyle(fontSize: 25)),
// // // // // // //               const SizedBox(width: 30),
// // // // // // //               Column(
// // // // // // //                 children: [
// // // // // // //                   Image.asset(logo, width: 50, height: 50),
// // // // // // //                   const SizedBox(height: 4),
// // // // // // //                   Text(
// // // // // // //                     name,
// // // // // // //                     style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // // //                   ),
// // // // // // //                 ],
// // // // // // //               ),
// // // // // // //             ],
// // // // // // //     );
// // // // // // //   }
// // // // // // // }

// // // // // // // // ✅ وميض للحالة Live فقط
// // // // // // // class _BlinkingChip extends StatefulWidget {
// // // // // // //   final String label;
// // // // // // //   final Color color;

// // // // // // //   const _BlinkingChip({required this.label, required this.color});

// // // // // // //   @override
// // // // // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // // // // }

// // // // // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // // // // //     with SingleTickerProviderStateMixin {
// // // // // // //   late AnimationController _controller;
// // // // // // //   late Animation<double> _animation;

// // // // // // //   @override
// // // // // // //   void initState() {
// // // // // // //     super.initState();
// // // // // // //     _controller = AnimationController(
// // // // // // //       vsync: this,
// // // // // // //       duration: const Duration(seconds: 1),
// // // // // // //     )..repeat(reverse: true);
// // // // // // //     _animation = Tween<double>(begin: 0.4, end: 1).animate(_controller);
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   void dispose() {
// // // // // // //     _controller.dispose();
// // // // // // //     super.dispose();
// // // // // // //   }

// // // // // // //   @override
// // // // // // //   Widget build(BuildContext context) {
// // // // // // //     return FadeTransition(
// // // // // // //       opacity: _animation,
// // // // // // //       child: Chip(
// // // // // // //         label: Text(widget.label, style: const TextStyle(color: Colors.white)),
// // // // // // //         backgroundColor: widget.color,
// // // // // // //       ),
// // // // // // //     );
// // // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';

// // // // // // class MatchCard extends StatelessWidget {
// // // // // //   final String teamA, logoA;
// // // // // //   final String teamB, logoB;
// // // // // //   final String time, status, moalek, tV;

// // // // // //   const MatchCard({
// // // // // //     super.key,
// // // // // //     required this.teamA,
// // // // // //     required this.logoA,
// // // // // //     // required this.resultA,
// // // // // //     required this.teamB,
// // // // // //     required this.logoB,
// // // // // //     // required this.resultB,
// // // // // //     required this.time,
// // // // // //     required this.status,
// // // // // //     required this.moalek,
// // // // // //     required this.tV,
// // // // // //   });

// // // // // //   Color _getStatusColor() {
// // // // // //     switch (status.toLowerCase()) {
// // // // // //       case 'live':
// // // // // //         return Colors.red;
// // // // // //       case 'قريبا':
// // // // // //         return Colors.green;
// // // // // //       case 'غدا':
// // // // // //         return Colors.green;
// // // // // //       case 'انتهى':
// // // // // //         return Colors.grey;
// // // // // //       default:
// // // // // //         return Colors.blueGrey;
// // // // // //     }
// // // // // //   }

// // // // // //   bool get _isLive => status.toLowerCase() == 'live';

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final statusColor = _getStatusColor();

// // // // // //     return Padding(
// // // // // //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // // // //       child: Container(
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: Colors.white.withOpacity(0.95),
// // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // //         ),
// // // // // //         padding: const EdgeInsets.all(16),
// // // // // //         child: Column(
// // // // // //           children: [
// // // // // //             // الصف العلوي: الفريق A - التوقيت - الفريق B
// // // // // //             Row(
// // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //               children: [
// // // // // //                 _buildTeamWithResult(logoA, teamA, tV, moalek, isLeft: true),
// // // // // //                 Column(
// // // // // //                   children: [
// // // // // //                     Text(
// // // // // //                       time,
// // // // // //                       style: const TextStyle(
// // // // // //                         fontSize: 20,
// // // // // //                         fontWeight: FontWeight.bold,
// // // // // //                       ),
// // // // // //                     ),
// // // // // //                     const SizedBox(height: 4),
// // // // // //                     _isLive
// // // // // //                         ? _BlinkingChip(label: status, color: statusColor)
// // // // // //                         : Chip(
// // // // // //                             backgroundColor: statusColor,
// // // // // //                             label: Text(
// // // // // //                               status,
// // // // // //                               style: const TextStyle(color: Colors.white),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //                 _buildTeamWithResult(logoB, teamB, tV, moalek, isLeft: false),
// // // // // //               ],
// // // // // //             ),

// // // // // //             const Divider(),

// // // // // //             // معلومات القناة والمعلق
// // // // // //             Row(
// // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //               children: [
// // // // // //                 Row(
// // // // // //                   children: [
// // // // // //                     const Icon(Icons.tv),
// // // // // //                     const SizedBox(width: 5),
// // // // // //                     Text("$tV"),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //                 Row(
// // // // // //                   children: [
// // // // // //                     const Icon(Icons.mic),
// // // // // //                     const SizedBox(width: 5),
// // // // // //                     Text("$moalek"),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildTeamWithResult(
// // // // // //     String logo,
// // // // // //     String name,
// // // // // //     tv,
// // // // // //     String moalek, {
// // // // // //     required bool isLeft,
// // // // // //   }) {
// // // // // //     return Row(
// // // // // //       children: isLeft
// // // // // //           ? [
// // // // // //               Column(
// // // // // //                 children: [
// // // // // //                   Image.network(
// // // // // //                     logo,
// // // // // //                     width: 50,
// // // // // //                     height: 50,
// // // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // // //                         const Icon(Icons.broken_image),
// // // // // //                   ),
// // // // // //                   const SizedBox(height: 4),
// // // // // //                   SizedBox(
// // // // // //                     width: 60,
// // // // // //                     child: Text(
// // // // // //                       name,
// // // // // //                       textAlign: TextAlign.center,
// // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(width: 30),
// // // // // //               // Text(result, style: const TextStyle(fontSize: 25)),
// // // // // //             ]
// // // // // //           : [
// // // // // //               // Text(result, style: const TextStyle(fontSize: 25)),
// // // // // //               const SizedBox(width: 30),
// // // // // //               Column(
// // // // // //                 children: [
// // // // // //                   Image.network(
// // // // // //                     logo,
// // // // // //                     width: 50,
// // // // // //                     height: 50,
// // // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // // //                         const Icon(Icons.broken_image),
// // // // // //                   ),
// // // // // //                   const SizedBox(height: 4),
// // // // // //                   SizedBox(
// // // // // //                     width: 60,
// // // // // //                     child: Text(
// // // // // //                       name,
// // // // // //                       textAlign: TextAlign.center,
// // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ],
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class _BlinkingChip extends StatefulWidget {
// // // // // //   final String label;
// // // // // //   final Color color;

// // // // // //   const _BlinkingChip({required this.label, required this.color});

// // // // // //   @override
// // // // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // // // }

// // // // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // // // //     with SingleTickerProviderStateMixin {
// // // // // //   late AnimationController _controller;
// // // // // //   late Animation<double> _animation;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _controller = AnimationController(
// // // // // //       vsync: this,
// // // // // //       duration: const Duration(seconds: 1),
// // // // // //     )..repeat(reverse: true);
// // // // // //     _animation = Tween<double>(begin: 0.4, end: 1).animate(_controller);
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _controller.dispose();
// // // // // //     super.dispose();
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return FadeTransition(
// // // // // //       opacity: _animation,
// // // // // //       child: Chip(
// // // // // //         label: Text(widget.label, style: const TextStyle(color: Colors.white)),
// // // // // //         backgroundColor: widget.color,
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // // }
// // // // // // import 'package:flutter/material.dart';

// // // // // // class MatchCard extends StatelessWidget {
// // // // // //   final String teamA, logoA;
// // // // // //   final String teamB, logoB;
// // // // // //   final String time;
// // // // // //   final String moalek, tV;
// // // // // //   final DateTime matchTime;

// // // // // //   const MatchCard({
// // // // // //     super.key,
// // // // // //     required this.teamA,
// // // // // //     required this.logoA,
// // // // // //     required this.teamB,
// // // // // //     required this.logoB,
// // // // // //     required this.time,
// // // // // //     required this.moalek,
// // // // // //     required this.tV,
// // // // // //     required this.matchTime,
// // // // // //   });

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     final now = DateTime.now();
// // // // // //     final matchEndTime = matchTime.add(const Duration(minutes: 90));
// // // // // //     String status = 'لم تبدأ';
// // // // // //     String displayTime = time;
// // // // // //     Color statusColor = Colors.blueGrey;

// // // // // //     if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// // // // // //       status = 'مباشر';
// // // // // //       final minutes = now.difference(matchTime).inMinutes;
// // // // // //       displayTime = 'الدقيقة ${minutes.clamp(1, 90)}';
// // // // // //       statusColor = Colors.red;
// // // // // //     } else if (now.isAfter(matchEndTime)) {
// // // // // //       status = 'انتهت';
// // // // // //       statusColor = Colors.grey;
// // // // // //     } else {
// // // // // //       status = 'لم تبدأ';
// // // // // //       statusColor = Colors.green;
// // // // // //       displayTime = time;
// // // // // //     }

// // // // // //     return Padding(
// // // // // //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // // // //       child: Container(
// // // // // //         decoration: BoxDecoration(
// // // // // //           color: Colors.white.withOpacity(0.95),
// // // // // //           borderRadius: BorderRadius.circular(20),
// // // // // //         ),
// // // // // //         padding: const EdgeInsets.all(16),
// // // // // //         child: Column(
// // // // // //           children: [
// // // // // //             if (status != 'مباشر')
// // // // // //               Text(
// // // // // //                 time,
// // // // // //                 style: const TextStyle(
// // // // // //                   fontSize: 20,
// // // // // //                   fontWeight: FontWeight.bold,
// // // // // //                 ),
// // // // // //               ),
// // // // // //             // الفريقين والتوقيت
// // // // // //             Row(
// // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //               children: [
// // // // // //                 _buildTeamWithLogo(logoA, teamA, isLeft: true),
// // // // // //                 Column(
// // // // // //                   children: [
// // // // // //                     const SizedBox(height: 4),

// // // // // //                     const SizedBox(height: 4),
// // // // // //                     status == 'مباشر'
// // // // // //                         ? _BlinkingChip(label: status, color: statusColor)
// // // // // //                         : Chip(
// // // // // //                             backgroundColor: statusColor,
// // // // // //                             label: Text(
// // // // // //                               status,
// // // // // //                               style: const TextStyle(color: Colors.white),
// // // // // //                             ),
// // // // // //                           ),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //                 _buildTeamWithLogo(logoB, teamB, isLeft: false),
// // // // // //               ],
// // // // // //             ),
// // // // // //             const Divider(),
// // // // // //             // القناة والمعلق
// // // // // //             Row(
// // // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // // //               children: [
// // // // // //                 Row(
// // // // // //                   children: [
// // // // // //                     const Icon(Icons.tv),
// // // // // //                     const SizedBox(width: 5),
// // // // // //                     Text(tV),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //                 Row(
// // // // // //                   children: [
// // // // // //                     const Icon(Icons.mic),
// // // // // //                     const SizedBox(width: 5),
// // // // // //                     Text(moalek),
// // // // // //                   ],
// // // // // //                 ),
// // // // // //               ],
// // // // // //             ),
// // // // // //           ],
// // // // // //         ),
// // // // // //       ),
// // // // // //     );
// // // // // //   }

// // // // // //   Widget _buildTeamWithLogo(String logo, String name, {required bool isLeft}) {
// // // // // //     return Row(
// // // // // //       children: isLeft
// // // // // //           ? [
// // // // // //               Column(
// // // // // //                 children: [
// // // // // //                   Image.network(
// // // // // //                     logo,
// // // // // //                     width: 50,
// // // // // //                     height: 50,
// // // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // // //                         const Icon(Icons.broken_image),
// // // // // //                   ),
// // // // // //                   const SizedBox(height: 4),
// // // // // //                   SizedBox(
// // // // // //                     width: 60,
// // // // // //                     child: Text(
// // // // // //                       name,
// // // // // //                       textAlign: TextAlign.center,
// // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //               const SizedBox(width: 30),
// // // // // //             ]
// // // // // //           : [
// // // // // //               const SizedBox(width: 30),
// // // // // //               Column(
// // // // // //                 children: [
// // // // // //                   Image.network(
// // // // // //                     logo,
// // // // // //                     width: 50,
// // // // // //                     height: 50,
// // // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // // //                         const Icon(Icons.broken_image),
// // // // // //                   ),
// // // // // //                   const SizedBox(height: 4),
// // // // // //                   SizedBox(
// // // // // //                     width: 60,
// // // // // //                     child: Text(
// // // // // //                       name,
// // // // // //                       textAlign: TextAlign.center,
// // // // // //                       overflow: TextOverflow.ellipsis,
// // // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // // //                     ),
// // // // // //                   ),
// // // // // //                 ],
// // // // // //               ),
// // // // // //             ],
// // // // // //     );
// // // // // //   }
// // // // // // }

// // // // // // class _BlinkingChip extends StatefulWidget {
// // // // // //   final String label;
// // // // // //   final Color color;

// // // // // //   const _BlinkingChip({required this.label, required this.color});

// // // // // //   @override
// // // // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // // // }

// // // // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // // // //     with SingleTickerProviderStateMixin {
// // // // // //   late AnimationController _controller;
// // // // // //   late Animation<double> _animation;

// // // // // //   @override
// // // // // //   void initState() {
// // // // // //     super.initState();
// // // // // //     _controller = AnimationController(
// // // // // //       vsync: this,
// // // // // //       duration: const Duration(milliseconds: 700),
// // // // // //     )..repeat(reverse: true);
// // // // // //     _animation = Tween<double>(begin: 0.3, end: 1).animate(_controller);
// // // // // //   }

// // // // // //   @override
// // // // // //   void dispose() {
// // // // // //     _controller.dispose();
// // // // // //     super.dispose();
// // // // // //   }

// // // // // //   @override
// // // // // //   Widget build(BuildContext context) {
// // // // // //     return FadeTransition(
// // // // // //       opacity: _animation,
// // // // // //       child: Chip(
// // // // // //         label: Text(widget.label, style: const TextStyle(color: Colors.white)),
// // // // // //         backgroundColor: widget.color,
// // // // // //       ),
// // // // // //     );
// // // // // //   }
// // // // // // }
// // // // // import 'package:flutter/material.dart';

// // // // // class MatchCard extends StatelessWidget {
// // // // //   final String teamA, logoA;
// // // // //   final String teamB, logoB;
// // // // //   final String time;
// // // // //   final String moalek, tV;
// // // // //   final DateTime matchTime;

// // // // //   const MatchCard({
// // // // //     super.key,
// // // // //     required this.teamA,
// // // // //     required this.logoA,
// // // // //     required this.teamB,
// // // // //     required this.logoB,
// // // // //     required this.time,
// // // // //     required this.moalek,
// // // // //     required this.tV,
// // // // //     required this.matchTime,
// // // // //   });

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final now = DateTime.now();
// // // // //     final matchEndTime = matchTime.add(const Duration(minutes: 90));
// // // // //     String status = 'لم تبدأ';
// // // // //     String displayTime = time;
// // // // //     Color statusColor = Colors.blueGrey;

// // // // //     if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// // // // //       status = 'مباشر';
// // // // //       final minutes = now.difference(matchTime).inMinutes;
// // // // //       displayTime = 'الدقيقة ${minutes.clamp(1, 90)}';
// // // // //       statusColor = Colors.red;
// // // // //     } else if (now.isAfter(matchEndTime)) {
// // // // //       status = 'انتهت';
// // // // //       statusColor = Colors.grey;
// // // // //       displayTime = time;
// // // // //     } else {
// // // // //       status = 'لم تبدأ';
// // // // //       statusColor = Colors.green;
// // // // //       displayTime = time;
// // // // //     }

// // // // //     return Padding(
// // // // //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // // //       child: Container(
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.white.withOpacity(0.95),
// // // // //           borderRadius: BorderRadius.circular(20),
// // // // //         ),
// // // // //         padding: const EdgeInsets.all(16),
// // // // //         child: Column(
// // // // //           children: [
// // // // //             // الفريقين والتوقيت
// // // // //             Row(
// // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //               children: [
// // // // //                 _buildTeamWithLogo(logoA, teamA, isLeft: true),
// // // // //                 Column(
// // // // //                   children: [
// // // // //                     if (status !=
// // // // //                         'مباشر') // عرض الوقت إذا لم تكن المباراة مباشرة
// // // // //                       Column(
// // // // //                         children: [
// // // // //                           Text(
// // // // //                             displayTime,
// // // // //                             style: const TextStyle(
// // // // //                               fontSize: 16,
// // // // //                               fontWeight: FontWeight.bold,
// // // // //                               color: Colors.black87,
// // // // //                             ),
// // // // //                           ),
// // // // //                           const SizedBox(height: 4),
// // // // //                         ],
// // // // //                       ),
// // // // //                     status == 'مباشر'
// // // // //                         ? _BlinkingChip(label: status, color: statusColor)
// // // // //                         : Chip(
// // // // //                             backgroundColor: statusColor,
// // // // //                             label: Text(
// // // // //                               status,
// // // // //                               style: const TextStyle(color: Colors.white),
// // // // //                             ),
// // // // //                           ),
// // // // //                   ],
// // // // //                 ),
// // // // //                 _buildTeamWithLogo(logoB, teamB, isLeft: false),
// // // // //               ],
// // // // //             ),
// // // // //             const Divider(),
// // // // //             // القناة والمعلق
// // // // //             Row(
// // // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //               children: [
// // // // //                 Row(
// // // // //                   children: [
// // // // //                     const Icon(Icons.tv),
// // // // //                     const SizedBox(width: 5),
// // // // //                     Text(tV),
// // // // //                   ],
// // // // //                 ),
// // // // //                 Row(
// // // // //                   children: [
// // // // //                     const Icon(Icons.mic),
// // // // //                     const SizedBox(width: 5),
// // // // //                     Text(moalek),
// // // // //                   ],
// // // // //                 ),
// // // // //               ],
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildTeamWithLogo(String logo, String name, {required bool isLeft}) {
// // // // //     return Row(
// // // // //       children: isLeft
// // // // //           ? [
// // // // //               Column(
// // // // //                 children: [
// // // // //                   Image.network(
// // // // //                     logo,
// // // // //                     width: 50,
// // // // //                     height: 50,
// // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // //                         const Icon(Icons.broken_image),
// // // // //                   ),
// // // // //                   const SizedBox(height: 4),
// // // // //                   SizedBox(
// // // // //                     width: 60,
// // // // //                     child: Text(
// // // // //                       name,
// // // // //                       textAlign: TextAlign.center,
// // // // //                       overflow: TextOverflow.ellipsis,
// // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(width: 30),
// // // // //             ]
// // // // //           : [
// // // // //               const SizedBox(width: 30),
// // // // //               Column(
// // // // //                 children: [
// // // // //                   Image.network(
// // // // //                     logo,
// // // // //                     width: 50,
// // // // //                     height: 50,
// // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // //                         const Icon(Icons.broken_image),
// // // // //                   ),
// // // // //                   const SizedBox(height: 4),
// // // // //                   SizedBox(
// // // // //                     width: 60,
// // // // //                     child: Text(
// // // // //                       name,
// // // // //                       textAlign: TextAlign.center,
// // // // //                       overflow: TextOverflow.ellipsis,
// // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ],
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class _BlinkingChip extends StatefulWidget {
// // // // //   final String label;
// // // // //   final Color color;

// // // // //   const _BlinkingChip({required this.label, required this.color});

// // // // //   @override
// // // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // // }

// // // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // // //     with SingleTickerProviderStateMixin {
// // // // //   late AnimationController _controller;
// // // // //   late Animation<double> _animation;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _controller = AnimationController(
// // // // //       vsync: this,
// // // // //       duration: const Duration(milliseconds: 700),
// // // // //     )..repeat(reverse: true);
// // // // //     _animation = Tween<double>(begin: 0.3, end: 1).animate(_controller);
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _controller.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return FadeTransition(
// // // // //       opacity: _animation,
// // // // //       child: Chip(
// // // // //         label: Text(widget.label, style: const TextStyle(color: Colors.white)),
// // // // //         backgroundColor: widget.color,
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // // import 'package:android_intent_plus/android_intent.dart';
// // // // // import 'package:android_intent_plus/flag.dart';
// // // // // import 'package:flutter/material.dart';
// // // // // import 'package:intl/intl.dart';
// // // // // import 'package:share_plus/share_plus.dart';

// // // // // class MatchCard extends StatelessWidget {
// // // // //   final String teamA, logoA;
// // // // //   final String teamB, logoB;
// // // // //   final String time;
// // // // //   final String moalek, tV;
// // // // //   final DateTime matchTime;
// // // // //   final String Link;

// // // // //   const MatchCard({
// // // // //     super.key,
// // // // //     required this.Link,

// // // // //     required this.teamA,
// // // // //     required this.logoA,
// // // // //     required this.teamB,
// // // // //     required this.logoB,
// // // // //     required this.time,
// // // // //     required this.moalek,
// // // // //     required this.tV,
// // // // //     required this.matchTime,
// // // // //   });

// // // // //   Future<void> playVideoExternally(BuildContext context) async {
// // // // //     if (Link == null || Link!.isEmpty) {
// // // // //       // Show an alert dialog if no link is available
// // // // //       showDialog(
// // // // //         context: context,
// // // // //         builder: (context) => AlertDialog(
// // // // //           title: const Text('لا يوجد رابط مشاهدة'),
// // // // //           content: const Text(
// // // // //             'عذرًا، لا يتوفر رابط مشاهدة لهذا الفيلم/المسلسل حاليًا.',
// // // // //           ),
// // // // //           actions: [
// // // // //             TextButton(
// // // // //               onPressed: () => Navigator.pop(context),
// // // // //               child: const Text('حسناً'),
// // // // //             ),
// // // // //           ],
// // // // //         ),
// // // // //       );
// // // // //       return; // Exit the function if no link
// // // // //     }

// // // // //     String videoUrl = Link!;
// // // // //     try {
// // // // //       final intent = AndroidIntent(
// // // // //         action: 'action_view',
// // // // //         data: videoUrl,
// // // // //         type: 'video/*',
// // // // //         // package: 'com.example.chewie_test', // OPTIONAL: Replace with the package name of a specific video player app (e.g., VLC, MX Player)
// // // // //         // If you remove 'package', the system will prompt the user to choose an app.
// // // // //         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
// // // // //       );
// // // // //       await intent.launch();
// // // // //     } catch (e) {
// // // // //       print('Error launching intent: $e');
// // // // //       // Fallback: Use general share if AndroidIntent fails
// // // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // // //         SnackBar(content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.')),
// // // // //       );
// // // // //       await Share.share(videoUrl);
// // // // //     }
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     final now = DateTime.now();
// // // // //     final matchEndTime = matchTime.add(const Duration(minutes: 90));
// // // // //     String status = 'لم تبدأ';
// // // // //     String displayTime = time;
// // // // //     Color statusColor = Colors.blueGrey;

// // // // //     if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// // // // //       status = 'مباشر';
// // // // //       final minutes = now.difference(matchTime).inMinutes;
// // // // //       displayTime = 'الدقيقة ${minutes.clamp(1, 90)}';
// // // // //       statusColor = Colors.red;
// // // // //     } else if (now.isAfter(matchEndTime)) {
// // // // //       status = 'انتهت';
// // // // //       statusColor = Colors.grey;
// // // // //       displayTime = DateFormat(
// // // // //         'HH:mm',
// // // // //       ).format(DateTime.parse(matchTime.toString()));
// // // // //     } else {
// // // // //       status = 'لم تبدأ';
// // // // //       statusColor = Colors.green;
// // // // //       displayTime = DateFormat(
// // // // //         'HH:mm',
// // // // //       ).format(DateTime.parse(matchTime.toString()));
// // // // //     }

// // // // //     return GestureDetector(
// // // // //       onTap: () => playVideoExternally(context),
// // // // //       child: Padding(
// // // // //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // // //         child: Container(
// // // // //           decoration: BoxDecoration(
// // // // //             color: Colors.white.withOpacity(0.95),
// // // // //             borderRadius: BorderRadius.circular(20),
// // // // //           ),
// // // // //           padding: const EdgeInsets.all(16),
// // // // //           child: Column(
// // // // //             children: [
// // // // //               // عرض الوقت فوق الحالة فقط إذا لم تكن المباراة مباشرة
// // // // //               if (status != 'مباشر')
// // // // //                 Column(
// // // // //                   children: [
// // // // //                     Text(
// // // // //                       displayTime,
// // // // //                       style: const TextStyle(
// // // // //                         fontSize: 16,
// // // // //                         fontWeight: FontWeight.bold,
// // // // //                       ),
// // // // //                     ),
// // // // //                     const SizedBox(height: 4),
// // // // //                   ],
// // // // //                 ),
// // // // //               // الفريقين والتوقيت
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: [
// // // // //                   _buildTeamWithLogo(logoA, teamA, isLeft: true),
// // // // //                   Column(
// // // // //                     children: [
// // // // //                       const SizedBox(height: 4),
// // // // //                       // عرض الحالة فقط إذا كانت المباراة مباشرة
// // // // //                       if (status == 'مباشر') ...[
// // // // //                         Text(
// // // // //                           displayTime,
// // // // //                           style: const TextStyle(
// // // // //                             fontSize: 16,
// // // // //                             fontWeight: FontWeight.bold,
// // // // //                           ),
// // // // //                         ),
// // // // //                         const SizedBox(height: 4),
// // // // //                       ],

// // // // //                       status == 'مباشر'
// // // // //                           ? _BlinkingChip(label: status, color: statusColor)
// // // // //                           : Chip(
// // // // //                               backgroundColor: statusColor,
// // // // //                               label: Text(
// // // // //                                 status,
// // // // //                                 style: const TextStyle(color: Colors.white),
// // // // //                               ),
// // // // //                             ),
// // // // //                     ],
// // // // //                   ),
// // // // //                   _buildTeamWithLogo(logoB, teamB, isLeft: false),
// // // // //                 ],
// // // // //               ),
// // // // //               const Divider(),
// // // // //               // القناة والمعلق
// // // // //               Row(
// // // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // // //                 children: [
// // // // //                   Row(
// // // // //                     children: [
// // // // //                       const Icon(Icons.tv),
// // // // //                       const SizedBox(width: 5),
// // // // //                       Text(tV),
// // // // //                     ],
// // // // //                   ),
// // // // //                   Row(
// // // // //                     children: [
// // // // //                       const Icon(Icons.mic),
// // // // //                       const SizedBox(width: 5),
// // // // //                       Text(moalek),
// // // // //                     ],
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ],
// // // // //           ),
// // // // //         ),
// // // // //       ),
// // // // //     );
// // // // //   }

// // // // //   Widget _buildTeamWithLogo(String logo, String name, {required bool isLeft}) {
// // // // //     return Row(
// // // // //       children: isLeft
// // // // //           ? [
// // // // //               Column(
// // // // //                 children: [
// // // // //                   Image.network(
// // // // //                     logo,
// // // // //                     width: 50,
// // // // //                     height: 50,
// // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // //                         const Icon(Icons.broken_image),
// // // // //                   ),
// // // // //                   const SizedBox(height: 4),
// // // // //                   SizedBox(
// // // // //                     width: 60,
// // // // //                     child: Text(
// // // // //                       name,
// // // // //                       textAlign: TextAlign.center,
// // // // //                       overflow: TextOverflow.ellipsis,
// // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //               const SizedBox(width: 30),
// // // // //             ]
// // // // //           : [
// // // // //               const SizedBox(width: 30),
// // // // //               Column(
// // // // //                 children: [
// // // // //                   Image.network(
// // // // //                     logo,
// // // // //                     width: 50,
// // // // //                     height: 50,
// // // // //                     errorBuilder: (context, error, stackTrace) =>
// // // // //                         const Icon(Icons.broken_image),
// // // // //                   ),
// // // // //                   const SizedBox(height: 4),
// // // // //                   SizedBox(
// // // // //                     width: 60,
// // // // //                     child: Text(
// // // // //                       name,
// // // // //                       textAlign: TextAlign.center,
// // // // //                       overflow: TextOverflow.ellipsis,
// // // // //                       style: const TextStyle(fontWeight: FontWeight.bold),
// // // // //                     ),
// // // // //                   ),
// // // // //                 ],
// // // // //               ),
// // // // //             ],
// // // // //     );
// // // // //   }
// // // // // }

// // // // // class _BlinkingChip extends StatefulWidget {
// // // // //   final String label;
// // // // //   final Color color;

// // // // //   const _BlinkingChip({required this.label, required this.color});

// // // // //   @override
// // // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // // }

// // // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // // //     with SingleTickerProviderStateMixin {
// // // // //   late AnimationController _controller;
// // // // //   late Animation<double> _animation;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _controller = AnimationController(
// // // // //       vsync: this,
// // // // //       duration: const Duration(milliseconds: 700),
// // // // //     )..repeat(reverse: true);
// // // // //     _animation = Tween<double>(begin: 0.3, end: 1).animate(_controller);
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _controller.dispose();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return FadeTransition(
// // // // //       opacity: _animation,
// // // // //       child: Chip(
// // // // //         label: Text(widget.label, style: const TextStyle(color: Colors.white)),
// // // // //         backgroundColor: widget.color,
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'package:android_intent_plus/android_intent.dart';
// // // // import 'package:android_intent_plus/flag.dart';
// // // // import 'package:flutter/material.dart';
// // // // import 'package:intl/intl.dart';
// // // // import 'package:share_plus/share_plus.dart';
// // // // import 'dart:async';

// // // // class MatchCard extends StatelessWidget {
// // // //   final String teamA, logoA;
// // // //   final String teamB, logoB;
// // // //   final String time;
// // // //   final String moalek, tV;
// // // //   final DateTime matchTime;
// // // //   final String Link;

// // // //   const MatchCard({
// // // //     super.key,
// // // //     required this.Link,
// // // //     required this.teamA,
// // // //     required this.logoA,
// // // //     required this.teamB,
// // // //     required this.logoB,
// // // //     required this.time,
// // // //     required this.moalek,
// // // //     required this.tV,
// // // //     required this.matchTime,
// // // //   });

// // // //   Future<void> playVideoExternally(BuildContext context) async {
// // // //     if (Link.isEmpty) {
// // // //       showDialog(
// // // //         context: context,
// // // //         builder: (context) => AlertDialog(
// // // //           title: const Text('لا يوجد رابط مشاهدة'),
// // // //           content: const Text(
// // // //             'عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.',
// // // //           ),
// // // //           actions: [
// // // //             TextButton(
// // // //               onPressed: () => Navigator.pop(context),
// // // //               child: const Text('حسناً'),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       );
// // // //       return;
// // // //     }

// // // //     String videoUrl = Link;
// // // //     try {
// // // //       final intent = AndroidIntent(
// // // //         action: 'action_view',
// // // //         data: videoUrl,
// // // //         type: 'video/*',
// // // //         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
// // // //       );
// // // //       await intent.launch();
// // // //     } catch (e) {
// // // //       print('Error launching intent: $e');
// // // //       ScaffoldMessenger.of(context).showSnackBar(
// // // //         const SnackBar(
// // // //           content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
// // // //         ),
// // // //       );
// // // //       await Share.share(videoUrl);
// // // //     }
// // // //   }

// // // //   // دالة لحساب حالة المباراة
// // // //   Map<String, dynamic> getMatchStatus() {
// // // //     final now = DateTime.now();
// // // //     final matchEndTime = matchTime.add(const Duration(minutes: 90));
// // // //     final oneHourBefore = matchTime.subtract(const Duration(hours: 1));

// // // //     String status;
// // // //     String displayTime;
// // // //     Color statusColor;
// // // //     Color timeBoxColor;
// // // //     bool isLive = false;
// // // //     bool showTimeAbove = false;

// // // //     if (now.isAfter(matchEndTime)) {
// // // //       // المباراة انتهت
// // // //       status = 'منتهى';
// // // //       statusColor = Colors.grey;
// // // //       timeBoxColor = Colors.grey.shade200;
// // // //       displayTime = DateFormat('HH:mm').format(matchTime);
// // // //     } else if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// // // //       // المباراة جارية الآن
// // // //       status = 'مباشر';
// // // //       statusColor = Colors.red;
// // // //       timeBoxColor = Colors.red.shade100;
// // // //       final minutes = now.difference(matchTime).inMinutes;
// // // //       displayTime = '${minutes.clamp(1, 90)}\'';
// // // //       isLive = true;
// // // //       showTimeAbove = true;
// // // //     } else if (now.isAfter(oneHourBefore)) {
// // // //       // ستبدأ قريباً (قبل ساعة من بداية المباراة)
// // // //       status = 'ستبدأ قريباً';
// // // //       statusColor = Colors.green;
// // // //       timeBoxColor = Colors.green.shade100;
// // // //       displayTime = 'ستبدأ قريباً';
// // // //     } else {
// // // //       // لم تبدأ بعد (أكثر من ساعة)
// // // //       status = 'لم تبدأ';
// // // //       statusColor = Colors.blue;
// // // //       timeBoxColor = Colors.blue.shade100;
// // // //       displayTime = DateFormat('HH:mm').format(matchTime);
// // // //     }

// // // //     return {
// // // //       'status': status,
// // // //       'displayTime': displayTime,
// // // //       'statusColor': statusColor,
// // // //       'timeBoxColor': timeBoxColor,
// // // //       'isLive': isLive,
// // // //       'showTimeAbove': showTimeAbove,
// // // //     };
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final matchStatus = getMatchStatus();

// // // //     return GestureDetector(
// // // //       onTap: () => playVideoExternally(context),
// // // //       child: Padding(
// // // //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // // //         child: Container(
// // // //           decoration: BoxDecoration(
// // // //             color: Colors.white.withOpacity(0.95),
// // // //             borderRadius: BorderRadius.circular(20),
// // // //           ),
// // // //           padding: const EdgeInsets.all(16),
// // // //           child: Column(
// // // //             mainAxisSize: MainAxisSize.min,
// // // //             children: [
// // // //               // عرض وقت المباراة فوق الحالة للمباريات المباشرة
// // // //               if (matchStatus['showTimeAbove'])
// // // //                 Column(
// // // //                   children: [
// // // //                     Text(
// // // //                       DateFormat('HH:mm').format(matchTime),
// // // //                       style: const TextStyle(
// // // //                         fontSize: 16,
// // // //                         fontWeight: FontWeight.bold,
// // // //                       ),
// // // //                     ),
// // // //                     const SizedBox(height: 8),
// // // //                   ],
// // // //                 ),

// // // //               // الفريقين مع مربع الوقت/الحالة في المنتصف
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: [
// // // //                   _buildTeamWithLogo(logoA, teamA),

// // // //                   // مربع الوقت/الحالة في المنتصف
// // // //                   Column(
// // // //                     mainAxisSize: MainAxisSize.min,
// // // //                     children: [
// // // //                       // مربع الوقت/الحالة
// // // //                       Container(
// // // //                         padding: const EdgeInsets.symmetric(
// // // //                           horizontal: 12,
// // // //                           vertical: 8,
// // // //                         ),
// // // //                         decoration: BoxDecoration(
// // // //                           color: matchStatus['timeBoxColor'],
// // // //                           borderRadius: BorderRadius.circular(10),
// // // //                           border: Border.all(
// // // //                             color: matchStatus['statusColor'].withOpacity(0.4),
// // // //                             width: 1.5,
// // // //                           ),
// // // //                         ),
// // // //                         child: matchStatus['isLive']
// // // //                             ? _BlinkingText(
// // // //                                 text: matchStatus['displayTime'],
// // // //                                 color: matchStatus['statusColor'],
// // // //                               )
// // // //                             : Text(
// // // //                                 matchStatus['displayTime'],
// // // //                                 style: TextStyle(
// // // //                                   fontSize: 14,
// // // //                                   fontWeight: FontWeight.bold,
// // // //                                   color: matchStatus['statusColor'],
// // // //                                 ),
// // // //                               ),
// // // //                       ),
// // // //                       const SizedBox(height: 8),

// // // //                       // حالة المباراة
// // // //                       matchStatus['isLive']
// // // //                           ? _BlinkingChip(
// // // //                               label: matchStatus['status'],
// // // //                               color: matchStatus['statusColor'],
// // // //                             )
// // // //                           : Container(
// // // //                               padding: const EdgeInsets.symmetric(
// // // //                                 horizontal: 10,
// // // //                                 vertical: 4,
// // // //                               ),
// // // //                               decoration: BoxDecoration(
// // // //                                 color: matchStatus['statusColor'],
// // // //                                 borderRadius: BorderRadius.circular(12),
// // // //                               ),
// // // //                               child: Text(
// // // //                                 matchStatus['status'],
// // // //                                 style: const TextStyle(
// // // //                                   color: Colors.white,
// // // //                                   fontSize: 12,
// // // //                                   fontWeight: FontWeight.bold,
// // // //                                 ),
// // // //                               ),
// // // //                             ),
// // // //                     ],
// // // //                   ),

// // // //                   _buildTeamWithLogo(logoB, teamB),
// // // //                 ],
// // // //               ),

// // // //               const SizedBox(height: 12),
// // // //               const Divider(),
// // // //               const SizedBox(height: 8),

// // // //               // القناة والمعلق
// // // //               Row(
// // // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //                 children: [
// // // //                   Expanded(
// // // //                     child: Row(
// // // //                       children: [
// // // //                         const Icon(Icons.tv, size: 18),
// // // //                         const SizedBox(width: 5),
// // // //                         Expanded(
// // // //                           child: Text(
// // // //                             tV,
// // // //                             overflow: TextOverflow.ellipsis,
// // // //                             style: const TextStyle(fontSize: 14),
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                   const SizedBox(width: 16),
// // // //                   Expanded(
// // // //                     child: Row(
// // // //                       children: [
// // // //                         const Icon(Icons.mic, size: 18),
// // // //                         const SizedBox(width: 5),
// // // //                         Expanded(
// // // //                           child: Text(
// // // //                             moalek,
// // // //                             overflow: TextOverflow.ellipsis,
// // // //                             style: const TextStyle(fontSize: 14),
// // // //                           ),
// // // //                         ),
// // // //                       ],
// // // //                     ),
// // // //                   ),
// // // //                 ],
// // // //               ),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   Widget _buildTeamWithLogo(String logo, String name) {
// // // //     return Column(
// // // //       mainAxisSize: MainAxisSize.min,
// // // //       children: [
// // // //         ClipRRect(
// // // //           borderRadius: BorderRadius.circular(8),
// // // //           child: Image.network(
// // // //             logo,
// // // //             width: 50,
// // // //             height: 50,
// // // //             fit: BoxFit.cover,
// // // //             errorBuilder: (context, error, stackTrace) => Container(
// // // //               width: 50,
// // // //               height: 50,
// // // //               decoration: BoxDecoration(
// // // //                 color: Colors.grey[300],
// // // //                 borderRadius: BorderRadius.circular(8),
// // // //               ),
// // // //               child: const Icon(Icons.sports_soccer, color: Colors.grey),
// // // //             ),
// // // //           ),
// // // //         ),
// // // //         const SizedBox(height: 4),
// // // //         SizedBox(
// // // //           width: 60,
// // // //           child: Text(
// // // //             name,
// // // //             textAlign: TextAlign.center,
// // // //             overflow: TextOverflow.ellipsis,
// // // //             maxLines: 1,
// // // //             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
// // // //           ),
// // // //         ),
// // // //       ],
// // // //     );
// // // //   }
// // // // }

// // // // // Widget للنص الوامض
// // // // class _BlinkingText extends StatefulWidget {
// // // //   final String text;
// // // //   final Color color;

// // // //   const _BlinkingText({required this.text, required this.color});

// // // //   @override
// // // //   State<_BlinkingText> createState() => _BlinkingTextState();
// // // // }

// // // // class _BlinkingTextState extends State<_BlinkingText>
// // // //     with SingleTickerProviderStateMixin {
// // // //   late AnimationController _controller;
// // // //   late Animation<double> _animation;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _controller = AnimationController(
// // // //       vsync: this,
// // // //       duration: const Duration(milliseconds: 800),
// // // //     )..repeat(reverse: true);
// // // //     _animation = Tween<double>(
// // // //       begin: 0.4,
// // // //       end: 1.0,
// // // //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _controller.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return FadeTransition(
// // // //       opacity: _animation,
// // // //       child: Text(
// // // //         widget.text,
// // // //         style: TextStyle(
// // // //           fontSize: 14,
// // // //           fontWeight: FontWeight.bold,
// // // //           color: widget.color,
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // Widget للحالة الوامضة
// // // // class _BlinkingChip extends StatefulWidget {
// // // //   final String label;
// // // //   final Color color;

// // // //   const _BlinkingChip({required this.label, required this.color});

// // // //   @override
// // // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // // }

// // // // class _BlinkingChipState extends State<_BlinkingChip>
// // // //     with SingleTickerProviderStateMixin {
// // // //   late AnimationController _controller;
// // // //   late Animation<double> _animation;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _controller = AnimationController(
// // // //       vsync: this,
// // // //       duration: const Duration(milliseconds: 800),
// // // //     )..repeat(reverse: true);
// // // //     _animation = Tween<double>(
// // // //       begin: 0.4,
// // // //       end: 1.0,
// // // //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _controller.dispose();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return FadeTransition(
// // // //       opacity: _animation,
// // // //       child: Container(
// // // //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
// // // //         decoration: BoxDecoration(
// // // //           color: widget.color,
// // // //           borderRadius: BorderRadius.circular(12),
// // // //         ),
// // // //         child: Text(
// // // //           widget.label,
// // // //           style: const TextStyle(
// // // //             color: Colors.white,
// // // //             fontSize: 12,
// // // //             fontWeight: FontWeight.bold,
// // // //           ),
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // فئة لترتيب المباريات
// // // // class MatchSorter {
// // // //   static List<MatchCard> sortMatches(List<MatchCard> matches) {
// // // //     final now = DateTime.now();

// // // //     // تقسيم المباريات حسب الحالة
// // // //     List<MatchCard> liveMatches = [];
// // // //     List<MatchCard> upcomingMatches = [];
// // // //     List<MatchCard> finishedMatches = [];

// // // //     for (var match in matches) {
// // // //       final matchEndTime = match.matchTime.add(const Duration(minutes: 90));

// // // //       if (now.isAfter(match.matchTime) && now.isBefore(matchEndTime)) {
// // // //         // مباراة جارية
// // // //         liveMatches.add(match);
// // // //       } else if (now.isBefore(match.matchTime)) {
// // // //         // مباراة قادمة
// // // //         upcomingMatches.add(match);
// // // //       } else {
// // // //         // مباراة منتهية
// // // //         finishedMatches.add(match);
// // // //       }
// // // //     }

// // // //     // ترتيب كل مجموعة حسب وقت المباراة
// // // //     liveMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// // // //     upcomingMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// // // //     finishedMatches.sort((a, b) => b.matchTime.compareTo(a.matchTime));

// // // //     // دمج القوائم: المباشرة أولاً، ثم القادمة، ثم المنتهية في الأسفل
// // // //     return [...liveMatches, ...upcomingMatches, ...finishedMatches];
// // // //   }

// // // //   // فلترة مباريات اليوم
// // // //   static List<MatchCard> getTodayMatches(List<MatchCard> matches) {
// // // //     final today = DateTime.now();
// // // //     return matches.where((match) {
// // // //       return match.matchTime.year == today.year &&
// // // //           match.matchTime.month == today.month &&
// // // //           match.matchTime.day == today.day;
// // // //     }).toList();
// // // //   }

// // // //   // فلترة مباريات الغد
// // // //   static List<MatchCard> getTomorrowMatches(List<MatchCard> matches) {
// // // //     final tomorrow = DateTime.now().add(const Duration(days: 1));
// // // //     return matches.where((match) {
// // // //       return match.matchTime.year == tomorrow.year &&
// // // //           match.matchTime.month == tomorrow.month &&
// // // //           match.matchTime.day == tomorrow.day;
// // // //     }).toList();
// // // //   }
// // // // }

// // // // // صفحة المباريات الكاملة
// // // // class MatchesPage extends StatefulWidget {
// // // //   @override
// // // //   _MatchesPageState createState() => _MatchesPageState();
// // // // }

// // // // class _MatchesPageState extends State<MatchesPage>
// // // //     with TickerProviderStateMixin {
// // // //   List<MatchCard> allMatches = [];
// // // //   late TabController _tabController;
// // // //   Timer? _refreshTimer;

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _tabController = TabController(length: 2, vsync: this);

// // // //     // تحديث الترتيب كل دقيقة
// // // //     _refreshTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
// // // //       setState(() {
// // // //         // إعادة ترتيب المباريات
// // // //       });
// // // //     });
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _tabController.dispose();
// // // //     _refreshTimer?.cancel();
// // // //     super.dispose();
// // // //   }

// // // //   void addNewMatch(MatchCard newMatch) {
// // // //     setState(() {
// // // //       allMatches.add(newMatch);
// // // //     });
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     final todayMatches = MatchSorter.sortMatches(
// // // //       MatchSorter.getTodayMatches(allMatches),
// // // //     );
// // // //     final tomorrowMatches = MatchSorter.sortMatches(
// // // //       MatchSorter.getTomorrowMatches(allMatches),
// // // //     );

// // // //     return Scaffold(
// // // //       appBar: AppBar(
// // // //         title: const Text('المباريات'),
// // // //         bottom: TabBar(
// // // //           controller: _tabController,
// // // //           tabs: const [
// // // //             Tab(text: 'اليوم'),
// // // //             Tab(text: 'غداً'),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //       body: TabBarView(
// // // //         controller: _tabController,
// // // //         children: [
// // // //           // مباريات اليوم
// // // //           ListView.builder(
// // // //             itemCount: todayMatches.length,
// // // //             itemBuilder: (context, index) {
// // // //               return todayMatches[index];
// // // //             },
// // // //           ),
// // // //           // مباريات الغد
// // // //           ListView.builder(
// // // //             itemCount: tomorrowMatches.length,
// // // //             itemBuilder: (context, index) {
// // // //               return tomorrowMatches[index];
// // // //             },
// // // //           ),
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'package:android_intent_plus/android_intent.dart';
// // // import 'package:android_intent_plus/flag.dart';
// // // import 'package:flutter/material.dart';
// // // import 'package:intl/intl.dart';
// // // import 'package:share_plus/share_plus.dart';
// // // import 'dart:async';

// // // class MatchCard extends StatelessWidget {
// // //   final String teamA, logoA;
// // //   final String teamB, logoB;
// // //   final String time;
// // //   final String moalek, tV;
// // //   final DateTime matchTime;
// // //   final String Link;

// // //   const MatchCard({
// // //     super.key,
// // //     required this.Link,
// // //     required this.teamA,
// // //     required this.logoA,
// // //     required this.teamB,
// // //     required this.logoB,
// // //     required this.time,
// // //     required this.moalek,
// // //     required this.tV,
// // //     required this.matchTime,
// // //   });

// // //   Future<void> playVideoExternally(BuildContext context) async {
// // //     if (Link.isEmpty) {
// // //       showDialog(
// // //         context: context,
// // //         builder: (context) => AlertDialog(
// // //           title: const Text('لا يوجد رابط مشاهدة'),
// // //           content: const Text(
// // //             'عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.',
// // //           ),
// // //           actions: [
// // //             TextButton(
// // //               onPressed: () => Navigator.pop(context),
// // //               child: const Text('حسناً'),
// // //             ),
// // //           ],
// // //         ),
// // //       );
// // //       return;
// // //     }

// // //     String videoUrl = Link;
// // //     try {
// // //       final intent = AndroidIntent(
// // //         action: 'action_view',
// // //         data: videoUrl,
// // //         type: 'video/*',
// // //         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
// // //       );
// // //       await intent.launch();
// // //     } catch (e) {
// // //       print('Error launching intent: $e');
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(
// // //           content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
// // //         ),
// // //       );
// // //       await Share.share(videoUrl);
// // //     }
// // //   }

// // //   // دالة لحساب حالة المباراة
// // //   Map<String, dynamic> getMatchStatus() {
// // //     final now = DateTime.now();
// // //     final matchEndTime = matchTime.add(const Duration(minutes: 90));
// // //     final oneHourBefore = matchTime.subtract(const Duration(hours: 1));

// // //     String status;
// // //     String displayTime;
// // //     Color statusColor;
// // //     Color timeBoxColor;
// // //     bool isLive = false;

// // //     if (now.isAfter(matchEndTime)) {
// // //       // المباراة انتهت
// // //       status = 'منتهى';
// // //       statusColor = Colors.grey;
// // //       timeBoxColor = Colors.grey.shade200;
// // //       displayTime = DateFormat('HH:mm').format(matchTime);
// // //     } else if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// // //       // المباراة جارية الآن
// // //       status = 'مباشر';
// // //       statusColor = Colors.red;
// // //       timeBoxColor = Colors.red.shade100;
// // //       final minutes = now.difference(matchTime).inMinutes;
// // //       displayTime = '${minutes.clamp(1, 90)}\'';
// // //       isLive = true;
// // //     } else if (now.isAfter(oneHourBefore)) {
// // //       // ستبدأ قريباً (قبل ساعة من بداية المباراة)
// // //       status = 'ستبدأ قريباً';
// // //       statusColor = Colors.green;
// // //       timeBoxColor = Colors.green.shade100;
// // //       displayTime = 'ستبدأ قريباً';
// // //     } else {
// // //       // لم تبدأ بعد (أكثر من ساعة)
// // //       status = 'لم تبدأ';
// // //       statusColor = Colors.blue;
// // //       timeBoxColor = Colors.blue.shade100;
// // //       displayTime = DateFormat('HH:mm').format(matchTime);
// // //     }

// // //     return {
// // //       'status': status,
// // //       'displayTime': displayTime,
// // //       'statusColor': statusColor,
// // //       'timeBoxColor': timeBoxColor,
// // //       'isLive': isLive,
// // //     };
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final matchStatus = getMatchStatus();

// // //     return GestureDetector(
// // //       onTap: () => playVideoExternally(context),
// // //       child: Padding(
// // //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// // //         child: Container(
// // //           decoration: BoxDecoration(
// // //             color: Colors.white.withOpacity(0.95),
// // //             borderRadius: BorderRadius.circular(20),
// // //           ),
// // //           padding: const EdgeInsets.all(16),
// // //           child: Column(
// // //             mainAxisSize: MainAxisSize.min,
// // //             children: [
// // //               // الفريقين مع مربع الوقت/الحالة في المنتصف
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   _buildTeamWithLogo(logoA, teamA),

// // //                   // مربع الوقت/الحالة في المنتصف
// // //                   Column(
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: [
// // //                       // مربع الوقت/الحالة
// // //                       Container(
// // //                         padding: const EdgeInsets.symmetric(
// // //                           horizontal: 12,
// // //                           vertical: 8,
// // //                         ),
// // //                         decoration: BoxDecoration(
// // //                           color: matchStatus['timeBoxColor'],
// // //                           borderRadius: BorderRadius.circular(10),
// // //                           border: Border.all(
// // //                             color: matchStatus['statusColor'].withOpacity(0.4),
// // //                             width: 1.5,
// // //                           ),
// // //                         ),
// // //                         child: Text(
// // //                           matchStatus['displayTime'],
// // //                           style: TextStyle(
// // //                             fontSize: 14,
// // //                             fontWeight: FontWeight.bold,
// // //                             color: matchStatus['statusColor'],
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       const SizedBox(height: 8),

// // //                       // حالة المباراة - فقط كلمة "مباشر" تومض للمباريات المباشرة
// // //                       matchStatus['isLive']
// // //                           ? _BlinkingChip(
// // //                               label: 'مباشر',
// // //                               color: matchStatus['statusColor'],
// // //                             )
// // //                           : Container(
// // //                               padding: const EdgeInsets.symmetric(
// // //                                 horizontal: 10,
// // //                                 vertical: 4,
// // //                               ),
// // //                               decoration: BoxDecoration(
// // //                                 color: matchStatus['statusColor'],
// // //                                 borderRadius: BorderRadius.circular(12),
// // //                               ),
// // //                               child: Text(
// // //                                 matchStatus['status'],
// // //                                 style: const TextStyle(
// // //                                   color: Colors.white,
// // //                                   fontSize: 12,
// // //                                   fontWeight: FontWeight.bold,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                     ],
// // //                   ),

// // //                   _buildTeamWithLogo(logoB, teamB),
// // //                 ],
// // //               ),

// // //               const SizedBox(height: 12),
// // //               const Divider(),
// // //               const SizedBox(height: 8),

// // //               // القناة والمعلق
// // //               Row(
// // //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //                 children: [
// // //                   Expanded(
// // //                     child: Row(
// // //                       children: [
// // //                         const Icon(Icons.tv, size: 18),
// // //                         const SizedBox(width: 5),
// // //                         Expanded(
// // //                           child: Text(
// // //                             tV,
// // //                             overflow: TextOverflow.ellipsis,
// // //                             style: const TextStyle(fontSize: 14),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                   const SizedBox(width: 16),
// // //                   Expanded(
// // //                     child: Row(
// // //                       children: [
// // //                         const Icon(Icons.mic, size: 18),
// // //                         const SizedBox(width: 5),
// // //                         Expanded(
// // //                           child: Text(
// // //                             moalek,
// // //                             overflow: TextOverflow.ellipsis,
// // //                             style: const TextStyle(fontSize: 14),
// // //                           ),
// // //                         ),
// // //                       ],
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   Widget _buildTeamWithLogo(String logo, String name) {
// // //     return Column(
// // //       mainAxisSize: MainAxisSize.min,
// // //       children: [
// // //         ClipRRect(
// // //           borderRadius: BorderRadius.circular(8),
// // //           child: Image.network(
// // //             logo,
// // //             width: 50,
// // //             height: 50,
// // //             fit: BoxFit.cover,
// // //             errorBuilder: (context, error, stackTrace) => Container(
// // //               width: 50,
// // //               height: 50,
// // //               decoration: BoxDecoration(
// // //                 color: Colors.grey[300],
// // //                 borderRadius: BorderRadius.circular(8),
// // //               ),
// // //               child: const Icon(Icons.sports_soccer, color: Colors.grey),
// // //             ),
// // //           ),
// // //         ),
// // //         const SizedBox(height: 4),
// // //         SizedBox(
// // //           width: 60,
// // //           child: Text(
// // //             name,
// // //             textAlign: TextAlign.center,
// // //             overflow: TextOverflow.ellipsis,
// // //             maxLines: 1,
// // //             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
// // //           ),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // // Widget للحالة الوامضة - فقط كلمة "مباشر"
// // // class _BlinkingChip extends StatefulWidget {
// // //   final String label;
// // //   final Color color;

// // //   const _BlinkingChip({required this.label, required this.color});

// // //   @override
// // //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // // }

// // // class _BlinkingChipState extends State<_BlinkingChip>
// // //     with SingleTickerProviderStateMixin {
// // //   late AnimationController _controller;
// // //   late Animation<double> _animation;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _controller = AnimationController(
// // //       vsync: this,
// // //       duration: const Duration(milliseconds: 800),
// // //     )..repeat(reverse: true);
// // //     _animation = Tween<double>(
// // //       begin: 0.3,
// // //       end: 1.0,
// // //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _controller.dispose();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return FadeTransition(
// // //       opacity: _animation,
// // //       child: Container(
// // //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
// // //         decoration: BoxDecoration(
// // //           color: widget.color,
// // //           borderRadius: BorderRadius.circular(12),
// // //         ),
// // //         child: Text(
// // //           widget.label,
// // //           style: const TextStyle(
// // //             color: Colors.white,
// // //             fontSize: 12,
// // //             fontWeight: FontWeight.bold,
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // // فئة لترتيب المباريات
// // // class MatchSorter {
// // //   static List<MatchCard> sortMatches(List<MatchCard> matches) {
// // //     final now = DateTime.now();

// // //     // تقسيم المباريات حسب الحالة
// // //     List<MatchCard> liveMatches = [];
// // //     List<MatchCard> upcomingMatches = [];
// // //     List<MatchCard> finishedMatches = [];

// // //     for (var match in matches) {
// // //       final matchEndTime = match.matchTime.add(const Duration(minutes: 90));

// // //       if (now.isAfter(match.matchTime) && now.isBefore(matchEndTime)) {
// // //         // مباراة جارية
// // //         liveMatches.add(match);
// // //       } else if (now.isBefore(match.matchTime)) {
// // //         // مباراة قادمة
// // //         upcomingMatches.add(match);
// // //       } else {
// // //         // مباراة منتهية
// // //         finishedMatches.add(match);
// // //       }
// // //     }

// // //     // ترتيب كل مجموعة حسب وقت المباراة
// // //     liveMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// // //     upcomingMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// // //     finishedMatches.sort((a, b) => b.matchTime.compareTo(a.matchTime));

// // //     // دمج القوائم: المباشرة أولاً، ثم القادمة، ثم المنتهية في الأسفل
// // //     return [...liveMatches, ...upcomingMatches, ...finishedMatches];
// // //   }

// // //   // فلترة مباريات اليوم
// // //   static List<MatchCard> getTodayMatches(List<MatchCard> matches) {
// // //     final today = DateTime.now();
// // //     return matches.where((match) {
// // //       return match.matchTime.year == today.year &&
// // //           match.matchTime.month == today.month &&
// // //           match.matchTime.day == today.day;
// // //     }).toList();
// // //   }

// // //   // فلترة مباريات الغد
// // //   static List<MatchCard> getTomorrowMatches(List<MatchCard> matches) {
// // //     final tomorrow = DateTime.now().add(const Duration(days: 1));
// // //     return matches.where((match) {
// // //       return match.matchTime.year == tomorrow.year &&
// // //           match.matchTime.month == tomorrow.month &&
// // //           match.matchTime.day == tomorrow.day;
// // //     }).toList();
// // //   }
// // // }

// // // // صفحة المباريات الكاملة
// // // class MatchesPage extends StatefulWidget {
// // //   @override
// // //   _MatchesPageState createState() => _MatchesPageState();
// // // }

// // // class _MatchesPageState extends State<MatchesPage>
// // //     with TickerProviderStateMixin {
// // //   List<MatchCard> allMatches = [];
// // //   late TabController _tabController;
// // //   Timer? _refreshTimer;

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _tabController = TabController(length: 2, vsync: this);

// // //     // تحديث الترتيب كل دقيقة
// // //     _refreshTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
// // //       setState(() {
// // //         // إعادة ترتيب المباريات
// // //       });
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _tabController.dispose();
// // //     _refreshTimer?.cancel();
// // //     super.dispose();
// // //   }

// // //   void addNewMatch(MatchCard newMatch) {
// // //     setState(() {
// // //       allMatches.add(newMatch);
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     final todayMatches = MatchSorter.sortMatches(
// // //       MatchSorter.getTodayMatches(allMatches),
// // //     );
// // //     final tomorrowMatches = MatchSorter.sortMatches(
// // //       MatchSorter.getTomorrowMatches(allMatches),
// // //     );

// // //     return Scaffold(
// // //       appBar: AppBar(
// // //         title: const Text('المباريات'),
// // //         bottom: TabBar(
// // //           controller: _tabController,
// // //           tabs: const [
// // //             Tab(text: 'اليوم'),
// // //             Tab(text: 'غداً'),
// // //           ],
// // //         ),
// // //       ),
// // //       body: TabBarView(
// // //         controller: _tabController,
// // //         children: [
// // //           // مباريات اليوم
// // //           ListView.builder(
// // //             itemCount: todayMatches.length,
// // //             itemBuilder: (context, index) {
// // //               return todayMatches[index];
// // //             },
// // //           ),
// // //           // مباريات الغد
// // //           ListView.builder(
// // //             itemCount: tomorrowMatches.length,
// // //             itemBuilder: (context, index) {
// // //               return tomorrowMatches[index];
// // //             },
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'package:android_intent_plus/android_intent.dart';
// // import 'package:android_intent_plus/flag.dart';
// // import 'package:flutter/material.dart';
// // import 'package:intl/intl.dart';
// // import 'package:korrrrrrrr/widget/install.dart';
// // import 'package:share_plus/share_plus.dart';
// // import 'dart:async';

// // class MatchCard extends StatelessWidget {
// //   final String teamA, logoA;
// //   final String teamB, logoB;
// //   final String time;
// //   final String moalek, tV;
// //   final DateTime matchTime;
// //   final String Link;

// //   const MatchCard({
// //     super.key,
// //     required this.Link,
// //     required this.teamA,
// //     required this.logoA,
// //     required this.teamB,
// //     required this.logoB,
// //     required this.time,
// //     required this.moalek,
// //     required this.tV,
// //     required this.matchTime,
// //   });

// //   // Future<void> playVideoExternally(BuildContext context) async {
// //   //   if (Link.isEmpty) {
// //   //     showDialog(
// //   //       context: context,
// //   //       builder: (context) => AlertDialog(
// //   //         title: const Text('لا يوجد رابط مشاهدة'),
// //   //         content: const Text(
// //   //           'عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.',
// //   //         ),
// //   //         actions: [
// //   //           TextButton(
// //   //             onPressed: () => Navigator.pop(context),
// //   //             child: const Text('حسناً'),
// //   //           ),
// //   //         ],
// //   //       ),
// //   //     );
// //   //     return;
// //   //   }

// //   //   String videoUrl = Link;
// //   //   try {
// //   //     final intent = AndroidIntent(
// //   //       action: 'action_view',
// //   //       data: videoUrl,
// //   //       type: 'video/*',
// //   //       package: 'com.skoplayer.pro',
// //   //       flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
// //   //     );
// //   //     await intent.launch();
// //   //   } catch (e) {
// //   //     print('Error launching intent: $e');
// //   //     ScaffoldMessenger.of(context).showSnackBar(
// //   //       const SnackBar(
// //   //         content: Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
// //   //       ),
// //   //     );
// //   //     await Share.share(videoUrl);
// //   //   }
// //   // }

// //   Future<void> playVideoExternally(BuildContext context) async {
// //     const String playerPackage = 'com.skoplayer.pro';
// //     const String playStoreUrl =
// //         'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

// //     // 1- التحقق من تثبيت التطبيق
// //     bool ok = await AppChecker.isAppInstalledd(playerPackage);

// //     if (!ok) {
// //       // 2- إظهار نافذة شبيهة بالصورة
// //       showDialog(
// //         context: context,
// //         builder: (_) => AlertDialog(
// //           shape: RoundedRectangleBorder(
// //             borderRadius: BorderRadius.circular(16),
// //           ),
// //           content: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               Container(
// //                 height: 50,
// //                 width: 50,
// //                 child: Image.asset("assets/images/iconnn.jpg"),
// //               ),
// //               const SizedBox(height: 12),
// //               const Text(
// //                 'المشغّل غير مثبت!',
// //                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 8),
// //               const Text(
// //                 'قم بتثبيت المشغّل من أجل المشاهدة .',
// //                 textAlign: TextAlign.center,
// //               ),
// //             ],
// //           ),
// //           actions: [
// //             TextButton(
// //               child: const Text('إلغاء'),
// //               onPressed: () => Navigator.pop(context),
// //             ),
// //             ElevatedButton(
// //               style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
// //               child: const Text('تثبيت'),
// //               onPressed: () async {
// //                 Navigator.pop(context);
// //                 final intent = AndroidIntent(
// //                   action: 'action_view',
// //                   data: playStoreUrl,
// //                   package: 'com.android.vending',
// //                 );
// //                 await intent.launch();
// //               },
// //             ),
// //           ],
// //         ),
// //       );
// //       return;
// //     }

// //     // 3- إذا كان مثبتًا شغّل الرابط مباشرة
// //     if (Link.isEmpty) {
// //       showDialog(
// //         context: context,
// //         builder: (_) => const AlertDialog(
// //           title: Text('لا يوجد رابط مشاهدة'),
// //           content: Text('عذرًا، لا يتوفر رابط مشاهدة لهذه المباراة حاليًا.'),
// //         ),
// //       );
// //       return;
// //     }

// //     try {
// //       final intent = AndroidIntent(
// //         action: 'action_view',
// //         data: Link,
// //         type: 'video/*',
// //         package: playerPackage,
// //         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
// //       );
// //       await intent.launch();
// //     } catch (e) {
// //       ScaffoldMessenger.of(context).showSnackBar(
// //         const SnackBar(content: Text('تعذر فتح الرابط مباشرة، جارٍ المشاركة')),
// //       );
// //       await Share.share(Link);
// //     }
// //   }

// //   // دالة لحساب حالة المباراة
// //   Map<String, dynamic> getMatchStatus() {
// //     final now = DateTime.now();
// //     final matchEndTime = matchTime.add(const Duration(minutes: 120));
// //     final oneHourBefore = matchTime.subtract(const Duration(hours: 1));

// //     String status;
// //     String displayTime;
// //     Color statusColor;
// //     Color timeBoxColor;
// //     bool isLive = false;
// //     bool isFinished = false;

// //     if (now.isAfter(matchEndTime)) {
// //       // المباراة انتهت
// //       status = 'انتهت';
// //       statusColor = Colors.grey;
// //       timeBoxColor = Colors.grey.shade200;
// //       displayTime = 'انتهت'; // عرض كلمة منتهى بدلاً من الوقت
// //       isFinished = true;
// //     } else if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
// //       // المباراة جارية الآن
// //       status = 'جاريه الان';
// //       statusColor = Colors.red;
// //       timeBoxColor = Colors.red.shade100;
// //       final minutes = now.difference(matchTime).inMinutes;
// //       displayTime = '${minutes.clamp(1, 90)}\'';
// //       isLive = true;
// //     } else if (now.isAfter(oneHourBefore)) {
// //       // ستبدأ قريباً (قبل ساعة من بداية المباراة)
// //       status = 'ستبدأ قريباً';
// //       statusColor = Colors.green;
// //       timeBoxColor = Colors.green.shade100;
// //       displayTime = 'ستبدأ قريباً';
// //     } else {
// //       // لم تبدأ بعد (أكثر من ساعة)
// //       status = 'لم تبدأ';
// //       statusColor = Colors.blue;
// //       timeBoxColor = Colors.blue.shade100;
// //       displayTime = DateFormat('HH:mm').format(matchTime);
// //     }

// //     return {
// //       'status': status,
// //       'displayTime': displayTime,
// //       'statusColor': statusColor,
// //       'timeBoxColor': timeBoxColor,
// //       'isLive': isLive,
// //       'isFinished': isFinished,
// //     };
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final matchStatus = getMatchStatus();

// //     return GestureDetector(
// //       onTap: () => playVideoExternally(context),
// //       child: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             color: Colors.white.withOpacity(0.95),
// //             borderRadius: BorderRadius.circular(20),
// //           ),
// //           padding: const EdgeInsets.all(16),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               // الفريقين مع مربع الوقت/الحالة في المنتصف
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   _buildTeamWithLogo(logoA, teamA),

// //                   // مربع الوقت/الحالة في المنتصف
// //                   Column(
// //                     mainAxisSize: MainAxisSize.min,
// //                     children: [
// //                       // مربع الوقت/الحالة
// //                       Container(
// //                         padding: const EdgeInsets.symmetric(
// //                           horizontal: 12,
// //                           vertical: 8,
// //                         ),
// //                         decoration: BoxDecoration(
// //                           color: matchStatus['timeBoxColor'],
// //                           borderRadius: BorderRadius.circular(10),
// //                           border: Border.all(
// //                             color: matchStatus['statusColor'].withOpacity(0.4),
// //                             width: 1.5,
// //                           ),
// //                         ),
// //                         child: Text(
// //                           matchStatus['displayTime'],
// //                           style: TextStyle(
// //                             fontSize: 14,
// //                             fontWeight: FontWeight.bold,
// //                             color: matchStatus['statusColor'],
// //                           ),
// //                         ),
// //                       ),
// //                       const SizedBox(height: 8),

// //                       // حالة المباراة
// //                       if (matchStatus['isLive'])
// //                         // فقط كلمة "مباشر" تومض للمباريات المباشرة
// //                         _BlinkingChip(
// //                           label: 'جاريه الان',
// //                           color: matchStatus['statusColor'],
// //                         )
// //                       else if (matchStatus['isFinished'])
// //                         // للمباريات المنتهية - فقط كلمة "منتهى" بالرمادي
// //                         Container(
// //                           padding: const EdgeInsets.symmetric(
// //                             horizontal: 10,
// //                             vertical: 4,
// //                           ),
// //                           decoration: BoxDecoration(
// //                             color: Colors.grey,
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           child: const Text(
// //                             'انتهت',
// //                             style: TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 12,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                         )
// //                       else
// //                         // للمباريات الأخرى
// //                         Container(
// //                           padding: const EdgeInsets.symmetric(
// //                             horizontal: 10,
// //                             vertical: 4,
// //                           ),
// //                           decoration: BoxDecoration(
// //                             color: matchStatus['statusColor'],
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           child: Text(
// //                             matchStatus['status'],
// //                             style: const TextStyle(
// //                               color: Colors.white,
// //                               fontSize: 12,
// //                               fontWeight: FontWeight.bold,
// //                             ),
// //                           ),
// //                         ),
// //                     ],
// //                   ),

// //                   _buildTeamWithLogo(logoB, teamB),
// //                 ],
// //               ),

// //               const SizedBox(height: 12),
// //               const Divider(),
// //               const SizedBox(height: 8),

// //               // القناة والمعلق
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Expanded(
// //                     child: Row(
// //                       children: [
// //                         const Icon(Icons.tv, size: 18),
// //                         const SizedBox(width: 5),
// //                         Expanded(
// //                           child: Text(
// //                             tV,
// //                             overflow: TextOverflow.ellipsis,
// //                             style: const TextStyle(fontSize: 14),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                   const SizedBox(width: 16),
// //                   Expanded(
// //                     child: Row(
// //                       mainAxisAlignment: MainAxisAlignment.end,
// //                       children: [
// //                         Text(
// //                           moalek,
// //                           overflow: TextOverflow.ellipsis,
// //                           style: const TextStyle(fontSize: 14),
// //                         ),
// //                         const Icon(Icons.mic, size: 18),
// //                         const SizedBox(width: 5),
// //                       ],
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildTeamWithLogo(String logo, String name) {
// //     return Column(
// //       mainAxisSize: MainAxisSize.min,
// //       children: [
// //         ClipRRect(
// //           borderRadius: BorderRadius.circular(8),
// //           child: Image.network(
// //             logo,
// //             width: 50,
// //             height: 50,
// //             fit: BoxFit.cover,
// //             errorBuilder: (context, error, stackTrace) => Container(
// //               width: 50,
// //               height: 50,
// //               decoration: BoxDecoration(
// //                 color: Colors.grey[300],
// //                 borderRadius: BorderRadius.circular(8),
// //               ),
// //               child: const Icon(Icons.sports_soccer, color: Colors.grey),
// //             ),
// //           ),
// //         ),
// //         const SizedBox(height: 4),
// //         SizedBox(
// //           width: 60,
// //           child: Text(
// //             name,
// //             textAlign: TextAlign.center,
// //             overflow: TextOverflow.ellipsis,
// //             maxLines: 1,
// //             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }

// // // Widget للحالة الوامضة - فقط كلمة "مباشر"
// // class _BlinkingChip extends StatefulWidget {
// //   final String label;
// //   final Color color;

// //   const _BlinkingChip({required this.label, required this.color});

// //   @override
// //   State<_BlinkingChip> createState() => _BlinkingChipState();
// // }

// // class _BlinkingChipState extends State<_BlinkingChip>
// //     with SingleTickerProviderStateMixin {
// //   late AnimationController _controller;
// //   late Animation<double> _animation;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _controller = AnimationController(
// //       vsync: this,
// //       duration: const Duration(milliseconds: 800),
// //     )..repeat(reverse: true);
// //     _animation = Tween<double>(
// //       begin: 0.3,
// //       end: 1.0,
// //     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
// //   }

// //   @override
// //   void dispose() {
// //     _controller.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return FadeTransition(
// //       opacity: _animation,
// //       child: Container(
// //         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
// //         decoration: BoxDecoration(
// //           color: widget.color,
// //           borderRadius: BorderRadius.circular(12),
// //         ),
// //         child: Text(
// //           widget.label,
// //           style: const TextStyle(
// //             color: Colors.white,
// //             fontSize: 12,
// //             fontWeight: FontWeight.bold,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // فئة لترتيب المباريات
// // class MatchSorter {
// //   static List<MatchCard> sortMatches(List<MatchCard> matches) {
// //     final now = DateTime.now();

// //     // تقسيم المباريات حسب الحالة
// //     List<MatchCard> liveMatches = [];
// //     List<MatchCard> upcomingMatches = [];
// //     List<MatchCard> finishedMatches = [];

// //     for (var match in matches) {
// //       final matchEndTime = match.matchTime.add(const Duration(minutes: 90));

// //       if (now.isAfter(match.matchTime) && now.isBefore(matchEndTime)) {
// //         // مباراة جارية
// //         liveMatches.add(match);
// //       } else if (now.isBefore(match.matchTime)) {
// //         // مباراة قادمة
// //         upcomingMatches.add(match);
// //       } else {
// //         // مباراة منتهية
// //         finishedMatches.add(match);
// //       }
// //     }

// //     // ترتيب كل مجموعة حسب وقت المباراة
// //     liveMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// //     upcomingMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
// //     finishedMatches.sort((a, b) => b.matchTime.compareTo(a.matchTime));

// //     // دمج القوائم: المباشرة أولاً، ثم القادمة، ثم المنتهية في الأسفل
// //     return [...liveMatches, ...upcomingMatches, ...finishedMatches];
// //   }

// //   // فلترة مباريات اليوم
// //   static List<MatchCard> getTodayMatches(List<MatchCard> matches) {
// //     final today = DateTime.now();
// //     return matches.where((match) {
// //       return match.matchTime.year == today.year &&
// //           match.matchTime.month == today.month &&
// //           match.matchTime.day == today.day;
// //     }).toList();
// //   }

// //   // فلترة مباريات الغد
// //   static List<MatchCard> getTomorrowMatches(List<MatchCard> matches) {
// //     final tomorrow = DateTime.now().add(const Duration(days: 1));
// //     return matches.where((match) {
// //       return match.matchTime.year == tomorrow.year &&
// //           match.matchTime.month == tomorrow.month &&
// //           match.matchTime.day == tomorrow.day;
// //     }).toList();
// //   }
// // }

// // // صفحة المباريات الكاملة
// // class MatchesPage extends StatefulWidget {
// //   @override
// //   _MatchesPageState createState() => _MatchesPageState();
// // }

// // class _MatchesPageState extends State<MatchesPage>
// //     with TickerProviderStateMixin {
// //   List<MatchCard> allMatches = [];
// //   late TabController _tabController;
// //   Timer? _refreshTimer;

// //   @override
// //   void initState() {
// //     super.initState();
// //     _tabController = TabController(length: 2, vsync: this);

// //     // تحديث الترتيب كل دقيقة
// //     _refreshTimer = Timer.periodic(const Duration(minutes: 1), (timer) {
// //       setState(() {
// //         // إعادة ترتيب المباريات
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _tabController.dispose();
// //     _refreshTimer?.cancel();
// //     super.dispose();
// //   }

// //   void addNewMatch(MatchCard newMatch) {
// //     setState(() {
// //       allMatches.add(newMatch);
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     final todayMatches = MatchSorter.sortMatches(
// //       MatchSorter.getTodayMatches(allMatches),
// //     );
// //     final tomorrowMatches = MatchSorter.sortMatches(
// //       MatchSorter.getTomorrowMatches(allMatches),
// //     );

// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('المباريات'),
// //         bottom: TabBar(
// //           controller: _tabController,
// //           tabs: const [
// //             Tab(text: 'اليوم'),
// //             Tab(text: 'غداً'),
// //           ],
// //         ),
// //       ),
// //       body: TabBarView(
// //         controller: _tabController,
// //         children: [
// //           // مباريات اليوم
// //           ListView.builder(
// //             itemCount: todayMatches.length,
// //             itemBuilder: (context, index) {
// //               return todayMatches[index];
// //             },
// //           ),
// //           // مباريات الغد
// //           ListView.builder(
// //             itemCount: tomorrowMatches.length,
// //             itemBuilder: (context, index) {
// //               return tomorrowMatches[index];
// //             },
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:android_intent_plus/android_intent.dart';
// import 'package:android_intent_plus/flag.dart';
// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';
// import 'package:korrrrrrrr/widget/install.dart';
// import 'package:share_plus/share_plus.dart';
// import 'dart:async';

// class MatchCard extends StatelessWidget {
//   final String teamA, logoA;
//   final String teamB, logoB;
//   final String time;
//   final String moalek, tV;
//   final DateTime matchTime;
//   final String streamId; // 🔥 تغيير من Link إلى streamId

//   const MatchCard({
//     super.key,
//     required this.streamId, // 🔥 استقبال streamId بدلاً من Link
//     required this.teamA,
//     required this.logoA,
//     required this.teamB,
//     required this.logoB,
//     required this.time,
//     required this.moalek,
//     required this.tV,
//     required this.matchTime,
//   });

//   Future<void> playVideoExternally(BuildContext context) async {
//     const String playerPackage = 'com.skoplayer.pro';
//     const String playStoreUrl =
//         'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

//     // 1- التحقق من تثبيت التطبيق
//     bool ok = await AppChecker.isAppInstalledd(playerPackage);

//     if (!ok) {
//       // 2- إظهار نافذة تثبيت التطبيق
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

//     // 3- إذا كان التطبيق مثبتاً، نرسل streamId إلى المشغل
//     try {
//       // ✅ نرسل streamId بدلاً من الرابط المباشر
//       final intent = AndroidIntent(
//         action: 'action_view',
//         data: 'stream:$streamId', // نستخدم schema مخصص
//         type: 'video/*',
//         package: playerPackage,
//         flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
//         arguments: {
//           'stream_id': streamId, // نمرر stream_id
//           'type': 'match', // نوع المحتوى (مباراة)
//         },
//       );
//       await intent.launch();
//     } catch (e) {
//       print('Error launching intent: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('تعذر فتح المشغل. جارٍ مشاركة المعرف.')),
//       );
//       // مشاركة streamId كحل بديل
//       await Share.share('stream_id: $streamId');
//     }
//   }

//   // دالة لحساب حالة المباراة
//   Map<String, dynamic> getMatchStatus() {
//     final now = DateTime.now();
//     final matchEndTime = matchTime.add(const Duration(minutes: 120));
//     final oneHourBefore = matchTime.subtract(const Duration(hours: 1));

//     String status;
//     String displayTime;
//     Color statusColor;
//     Color timeBoxColor;
//     bool isLive = false;
//     bool isFinished = false;

//     if (now.isAfter(matchEndTime)) {
//       // المباراة انتهت
//       status = 'انتهت';
//       statusColor = Colors.grey;
//       timeBoxColor = Colors.grey.shade200;
//       displayTime = 'انتهت';
//       isFinished = true;
//     } else if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
//       // المباراة جارية الآن
//       status = 'جاريه الان';
//       statusColor = Colors.red;
//       timeBoxColor = Colors.red.shade100;
//       final minutes = now.difference(matchTime).inMinutes;
//       displayTime = '${minutes.clamp(1, 90)}\'';
//       isLive = true;
//     } else if (now.isAfter(oneHourBefore)) {
//       // ستبدأ قريباً
//       status = 'ستبدأ قريباً';
//       statusColor = Colors.green;
//       timeBoxColor = Colors.green.shade100;
//       displayTime = 'ستبدأ قريباً';
//     } else {
//       // لم تبدأ بعد
//       status = 'لم تبدأ';
//       statusColor = Colors.blue;
//       timeBoxColor = Colors.blue.shade100;
//       displayTime = DateFormat('HH:mm').format(matchTime);
//     }

//     return {
//       'status': status,
//       'displayTime': displayTime,
//       'statusColor': statusColor,
//       'timeBoxColor': timeBoxColor,
//       'isLive': isLive,
//       'isFinished': isFinished,
//     };
//   }

//   @override
//   Widget build(BuildContext context) {
//     final matchStatus = getMatchStatus();

//     return GestureDetector(
//       onTap: () => playVideoExternally(context),
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.white.withOpacity(0.95),
//             borderRadius: BorderRadius.circular(20),
//           ),
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               // الفريقين مع مربع الوقت/الحالة في المنتصف
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   _buildTeamWithLogo(logoA, teamA),

//                   // مربع الوقت/الحالة في المنتصف
//                   Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       // مربع الوقت/الحالة
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 12,
//                           vertical: 8,
//                         ),
//                         decoration: BoxDecoration(
//                           color: matchStatus['timeBoxColor'],
//                           borderRadius: BorderRadius.circular(10),
//                           border: Border.all(
//                             color: matchStatus['statusColor'].withOpacity(0.4),
//                             width: 1.5,
//                           ),
//                         ),
//                         child: Text(
//                           matchStatus['displayTime'],
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold,
//                             color: matchStatus['statusColor'],
//                           ),
//                         ),
//                       ),
//                       const SizedBox(height: 8),

//                       // حالة المباراة
//                       if (matchStatus['isLive'])
//                         _BlinkingChip(
//                           label: 'جاريه الان',
//                           color: matchStatus['statusColor'],
//                         )
//                       else if (matchStatus['isFinished'])
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: Colors.grey,
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: const Text(
//                             'انتهت',
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         )
//                       else
//                         Container(
//                           padding: const EdgeInsets.symmetric(
//                             horizontal: 10,
//                             vertical: 4,
//                           ),
//                           decoration: BoxDecoration(
//                             color: matchStatus['statusColor'],
//                             borderRadius: BorderRadius.circular(12),
//                           ),
//                           child: Text(
//                             matchStatus['status'],
//                             style: const TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                     ],
//                   ),

//                   _buildTeamWithLogo(logoB, teamB),
//                 ],
//               ),

//               const SizedBox(height: 12),
//               const Divider(),
//               const SizedBox(height: 8),

//               // القناة والمعلق
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(
//                     child: Row(
//                       children: [
//                         const Icon(Icons.tv, size: 18),
//                         const SizedBox(width: 5),
//                         Expanded(
//                           child: Text(
//                             tV,
//                             overflow: TextOverflow.ellipsis,
//                             style: const TextStyle(fontSize: 14),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(width: 16),
//                   Expanded(
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           moalek,
//                           overflow: TextOverflow.ellipsis,
//                           style: const TextStyle(fontSize: 14),
//                         ),
//                         const Icon(Icons.mic, size: 18),
//                         const SizedBox(width: 5),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTeamWithLogo(String logo, String name) {
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         ClipRRect(
//           borderRadius: BorderRadius.circular(8),
//           child: Image.network(
//             logo,
//             width: 50,
//             height: 50,
//             fit: BoxFit.cover,
//             errorBuilder: (context, error, stackTrace) => Container(
//               width: 50,
//               height: 50,
//               decoration: BoxDecoration(
//                 color: Colors.grey[300],
//                 borderRadius: BorderRadius.circular(8),
//               ),
//               child: const Icon(Icons.sports_soccer, color: Colors.grey),
//             ),
//           ),
//         ),
//         const SizedBox(height: 4),
//         SizedBox(
//           width: 60,
//           child: Text(
//             name,
//             textAlign: TextAlign.center,
//             overflow: TextOverflow.ellipsis,
//             maxLines: 1,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // Widget للحالة الوامضة - فقط كلمة "مباشر"
// class _BlinkingChip extends StatefulWidget {
//   final String label;
//   final Color color;

//   const _BlinkingChip({required this.label, required this.color});

//   @override
//   State<_BlinkingChip> createState() => _BlinkingChipState();
// }

// class _BlinkingChipState extends State<_BlinkingChip>
//     with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _animation;

//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 800),
//     )..repeat(reverse: true);
//     _animation = Tween<double>(
//       begin: 0.3,
//       end: 1.0,
//     ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: _animation,
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
//         decoration: BoxDecoration(
//           color: widget.color,
//           borderRadius: BorderRadius.circular(12),
//         ),
//         child: Text(
//           widget.label,
//           style: const TextStyle(
//             color: Colors.white,
//             fontSize: 12,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }
// }

// // فئة لترتيب المباريات
// class MatchSorter {
//   static List<MatchCard> sortMatches(List<MatchCard> matches) {
//     final now = DateTime.now();

//     // تقسيم المباريات حسب الحالة
//     List<MatchCard> liveMatches = [];
//     List<MatchCard> upcomingMatches = [];
//     List<MatchCard> finishedMatches = [];

//     for (var match in matches) {
//       final matchEndTime = match.matchTime.add(const Duration(minutes: 90));

//       if (now.isAfter(match.matchTime) && now.isBefore(matchEndTime)) {
//         // مباراة جارية
//         liveMatches.add(match);
//       } else if (now.isBefore(match.matchTime)) {
//         // مباراة قادمة
//         upcomingMatches.add(match);
//       } else {
//         // مباراة منتهية
//         finishedMatches.add(match);
//       }
//     }

//     // ترتيب كل مجموعة حسب وقت المباراة
//     liveMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
//     upcomingMatches.sort((a, b) => a.matchTime.compareTo(b.matchTime));
//     finishedMatches.sort((a, b) => b.matchTime.compareTo(a.matchTime));

//     // دمج القوائم: المباشرة أولاً، ثم القادمة، ثم المنتهية في الأسفل
//     return [...liveMatches, ...upcomingMatches, ...finishedMatches];
//   }

//   // فلترة مباريات اليوم
//   static List<MatchCard> getTodayMatches(List<MatchCard> matches) {
//     final today = DateTime.now();
//     return matches.where((match) {
//       return match.matchTime.year == today.year &&
//           match.matchTime.month == today.month &&
//           match.matchTime.day == today.day;
//     }).toList();
//   }

//   // فلترة مباريات الغد
//   static List<MatchCard> getTomorrowMatches(List<MatchCard> matches) {
//     final tomorrow = DateTime.now().add(const Duration(days: 1));
//     return matches.where((match) {
//       return match.matchTime.year == tomorrow.year &&
//           match.matchTime.month == tomorrow.month &&
//           match.matchTime.day == tomorrow.day;
//     }).toList();
//   }
// }
import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:korrrrrrrr/widget/install.dart';
import 'package:share_plus/share_plus.dart';

class MatchCard extends StatelessWidget {
  final String teamA, logoA;
  final String teamB, logoB;
  final String time;
  final String moalek, tV;
  final DateTime matchTime;
  final String streamId; // 🔥 استقبال stream_id بدلاً من الرابط المباشر

  const MatchCard({
    super.key,
    required this.streamId, // 🔥 هذا هو المهم
    required this.teamA,
    required this.logoA,
    required this.teamB,
    required this.logoB,
    required this.time,
    required this.moalek,
    required this.tV,
    required this.matchTime,
  });

  Future<void> playVideoExternally(BuildContext context) async {
    const String playerPackage = 'com.skoplayer.pro';
    const String playStoreUrl =
        'https://play.google.com/store/apps/details?id=com.skoplayer.pro';

    // 1- التحقق من تثبيت التطبيق
    bool ok = await AppChecker.isAppInstalledd(playerPackage);

    if (!ok) {
      // 2- إظهار نافذة تثبيت التطبيق
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

    // 3- إذا كان مثبتًا، نرسل stream_id إلى المشغل
    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data:
            'https://samplelib.com/lib/preview/mp4/sample-5s.mp4', // رابط وهمي
        type: 'video/*',
        package: 'com.skoplayer.pro',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
        arguments: {'id': streamId, 'type': 'stream'},
      );
      print('🚀 Sending intent with: id=$streamId, type=stream');
      await intent.launch();
    } catch (e) {
      print('Error launching intent: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تعذر فتح المشغل. جارٍ مشاركة المعرف.')),
      );
      await Share.share('$streamId');
    }
  }

  // باقي دوال MatchCard كما هي...
  Map<String, dynamic> getMatchStatus() {
    final now = DateTime.now();
    final matchEndTime = matchTime.add(const Duration(minutes: 120));
    final oneHourBefore = matchTime.subtract(const Duration(hours: 1));

    String status;
    String displayTime;
    Color statusColor;
    Color timeBoxColor;
    bool isLive = false;
    bool isFinished = false;

    if (now.isAfter(matchEndTime)) {
      status = 'انتهت';
      statusColor = Colors.grey;
      timeBoxColor = Colors.grey.shade200;
      displayTime = 'انتهت';
      isFinished = true;
    } else if (now.isAfter(matchTime) && now.isBefore(matchEndTime)) {
      status = 'جاريه الان';
      statusColor = Colors.red;
      timeBoxColor = Colors.red.shade100;
      final minutes = now.difference(matchTime).inMinutes;
      displayTime = '${minutes.clamp(1, 90)}\'';
      isLive = true;
    } else if (now.isAfter(oneHourBefore)) {
      status = 'ستبدأ قريباً';
      statusColor = Colors.green;
      timeBoxColor = Colors.green.shade100;
      displayTime = 'ستبدأ قريباً';
    } else {
      status = 'لم تبدأ';
      statusColor = Colors.blue;
      timeBoxColor = Colors.blue.shade100;
      displayTime = DateFormat('HH:mm').format(matchTime);
    }

    return {
      'status': status,
      'displayTime': displayTime,
      'statusColor': statusColor,
      'timeBoxColor': timeBoxColor,
      'isLive': isLive,
      'isFinished': isFinished,
    };
  }

  @override
  Widget build(BuildContext context) {
    final matchStatus = getMatchStatus();

    return GestureDetector(
      onTap: () => playVideoExternally(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(20),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildTeamWithLogo(logoA, teamA),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: matchStatus['timeBoxColor'],
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color: matchStatus['statusColor'].withOpacity(0.4),
                            width: 1.5,
                          ),
                        ),
                        child: Text(
                          matchStatus['displayTime'],
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: matchStatus['statusColor'],
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      if (matchStatus['isLive'])
                        _BlinkingChip(
                          label: 'جاريه الان',
                          color: matchStatus['statusColor'],
                        )
                      else if (matchStatus['isFinished'])
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'انتهت',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      else
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),
                          decoration: BoxDecoration(
                            color: matchStatus['statusColor'],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            matchStatus['status'],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ],
                  ),
                  _buildTeamWithLogo(logoB, teamB),
                ],
              ),
              const SizedBox(height: 12),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        const Icon(Icons.tv, size: 18),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            tV,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          moalek,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 14),
                        ),
                        const Icon(Icons.mic, size: 18),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTeamWithLogo(String logo, String name) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            logo,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.sports_soccer, color: Colors.grey),
            ),
          ),
        ),
        const SizedBox(height: 4),
        SizedBox(
          width: 60,
          child: Text(
            name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
      ],
    );
  }
}

// Widget للحالة الوامضة
class _BlinkingChip extends StatefulWidget {
  final String label;
  final Color color;

  const _BlinkingChip({required this.label, required this.color});

  @override
  State<_BlinkingChip> createState() => _BlinkingChipState();
}

class _BlinkingChipState extends State<_BlinkingChip>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    )..repeat(reverse: true);
    _animation = Tween<double>(
      begin: 0.3,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          widget.label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
