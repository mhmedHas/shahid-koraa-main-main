// // // import 'package:flutter/material.dart';
// // // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // // class CustomNavBar extends StatelessWidget {
// // //   final int selectedIndex;
// // //   final Function(int) onTap;

// // //   const CustomNavBar({
// // //     super.key,
// // //     required this.selectedIndex,
// // //     required this.onTap,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     List<_NavItem> items = [
// // //       _NavItem(icon: Icons.tv, label: 'Channel'), // أيقونة تلفزيون للقنوات
// // //       _NavItem(icon: Icons.movie, label: 'Movie'), // أيقونة أفلام
// // //       _NavItem(
// // //         icon: Icons.sports_soccer,
// // //         label: 'Matches',
// // //       ), // أيقونة رياضية للمباريات
// // //       _NavItem(icon: FontAwesomeIcons.dragon, label: 'Anime'), // أيقونة أنيمي
// // //       _NavItem(icon: Icons.live_tv, label: 'Series'), // أيقونة مسلسلات
// // //     ];

// // //     return Padding(
// // //       padding: const EdgeInsets.only(bottom: 10, right: 15, left: 15),
// // //       child: Container(
// // //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
// // //         decoration: BoxDecoration(
// // //           color: Color(0xFF1C1C1E), // خلفية داكنة أنيقة
// // //           borderRadius: BorderRadius.circular(24),
// // //         ),
// // //         child: Row(
// // //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //           children: List.generate(items.length, (index) {
// // //             final isSelected = index == selectedIndex;
// // //             return GestureDetector(
// // //               onTap: () => onTap(index),
// // //               child: AnimatedContainer(
// // //                 duration: const Duration(milliseconds: 150),
// // //                 padding: EdgeInsets.symmetric(
// // //                   horizontal: isSelected ? 14 : 0,
// // //                   vertical: 8,
// // //                 ),
// // //                 decoration: BoxDecoration(
// // //                   color:
// // //                       isSelected
// // //                           ? Color(0xFF00B4D8)
// // //                           : Colors.transparent, // لون مميز عند التحديد
// // //                   borderRadius: BorderRadius.circular(30),
// // //                 ),
// // //                 child: Row(
// // //                   children: [
// // //                     Icon(
// // //                       items[index].icon,
// // //                       size: 24,
// // //                       color: isSelected ? Colors.black : Colors.white,
// // //                     ),
// // //                     if (isSelected) SizedBox(width: 6),
// // //                     if (isSelected)
// // //                       Text(
// // //                         items[index].label,
// // //                         style: TextStyle(
// // //                           color: Colors.black,
// // //                           fontWeight: FontWeight.bold,
// // //                         ),
// // //                       ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             );
// // //           }),
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _NavItem {
// // //   final IconData icon;
// // //   final String label;

// // //   _NavItem({required this.icon, required this.label});
// // // }
// // import 'package:flutter/material.dart';
// // import 'package:flutter/material.dart';
// // import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // class CustomNavBar extends StatelessWidget {
// //   final int selectedIndex;
// //   final Function(int) onTap;

// //   const CustomNavBar({
// //     super.key,
// //     required this.selectedIndex,
// //     required this.onTap,
// //   });

// //   @override
// //   Widget build(BuildContext context) {
// //     List<_NavItem> items = [
// //       _NavItem(icon: Icons.tv, label: 'Channel'),
// //       _NavItem(icon: Icons.movie, label: 'Movie'),
// //       _NavItem(icon: Icons.sports_soccer, label: 'Matches'),
// //       _NavItem(
// //         imagePath: 'assets/images/00-removebg-preview.png',
// //         label: 'Anime',
// //       ),
// //       _NavItem(icon: Icons.live_tv, label: 'Series'),
// //     ];

// //     return Align(
// //       alignment: Alignment.bottomCenter,
// //       child: Container(
// //         width: MediaQuery.of(context).size.width,
// //         padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
// //         color: const Color(0xFF1C1C1E), // لون الخلفية بدون حواف
// //         child: Row(
// //           mainAxisAlignment: MainAxisAlignment.spaceAround,
// //           children: List.generate(items.length, (index) {
// //             final isSelected = index == selectedIndex;
// //             return GestureDetector(
// //               onTap: () => onTap(index),
// //               child: AnimatedContainer(
// //                 duration: const Duration(milliseconds: 150),
// //                 padding: EdgeInsets.symmetric(
// //                   horizontal: isSelected ? 14 : 0,
// //                   vertical: 8,
// //                 ),
// //                 decoration: BoxDecoration(
// //                   color:
// //                       isSelected ? const Color(0xFFFFC107) : Colors.transparent,
// //                   borderRadius: BorderRadius.circular(30),
// //                 ),
// //                 child: Row(
// //                   children: [
// //                     items[index].imagePath != null
// //                         ? Image.asset(
// //                           items[index].imagePath!,
// //                           width: 24,
// //                           height: 24,
// //                           color: isSelected ? Colors.black : Colors.white,
// //                         )
// //                         : Icon(
// //                           items[index].icon!,
// //                           size: 24,
// //                           color: isSelected ? Colors.black : Colors.white,
// //                         ),
// //                     if (isSelected) const SizedBox(width: 6),
// //                     if (isSelected)
// //                       Text(
// //                         items[index].label,
// //                         style: const TextStyle(
// //                           color: Colors.black,
// //                           fontWeight: FontWeight.bold,
// //                         ),
// //                       ),
// //                   ],
// //                 ),
// //               ),
// //             );
// //           }),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class _NavItem {
// //   final IconData? icon;
// //   final String label;
// //   final String? imagePath;

// //   _NavItem({this.icon, required this.label, this.imagePath});
// // }

// // // import 'package:flutter/material.dart';

// // // class CustomNavBar extends StatelessWidget {
// // //   final int selectedIndex;
// // //   final Function(int) onTap;

// // //   const CustomNavBar({
// // //     super.key,
// // //     required this.selectedIndex,
// // //     required this.onTap,
// // //   });

// // //   @override
// // //   Widget build(BuildContext context) {
// //   //  List<_NavItem> items = [
// //   //     _NavItem(icon: Icons.tv, label: 'Channel'),
// //   //     _NavItem(icon: Icons.movie, label: 'Movie'),
// //   //     _NavItem(icon: Icons.sports_soccer, label: 'Matches'),
// //   //     _NavItem(
// //   //       imagePath:
// //   //           'assets/images/00-removebg-preview.png', // 🔁 صورة أنمي بدلاً من الأيقونة
// //   //       label: 'Anime',
// //   //     ),
// //   //     _NavItem(icon: Icons.live_tv, label: 'Series'),
// //   //   ];

// // //     return Container(
// // //       color: Colors.black,
// // //       padding: const EdgeInsets.symmetric(vertical: 8),
// // //       child: Row(
// // //         mainAxisAlignment: MainAxisAlignment.spaceAround,
// // //         children: List.generate(items.length, (index) {
// // //           final isSelected = index == selectedIndex;
// // //           final selectedColor = Color(0xFFFFC107); // أصفر للأيقونة المختارة

// // //           return GestureDetector(
// // //             onTap: () => onTap(index),
// // //             child: Column(
// // //               mainAxisSize: MainAxisSize.min,
// // //               children: [
// // //                 items[index].imagePath != null
// // //                     ? Image.asset(
// // //                       items[index].imagePath!,
// // //                       width: 26,
// // //                       height: 26,
// // //                       color: isSelected ? selectedColor : Colors.white,
// // //                     )
// // //                     : Icon(
// // //                       items[index].icon!,
// // //                       size: 26,
// // //                       color: isSelected ? selectedColor : Colors.white,
// // //                     ),
// // //                 const SizedBox(height: 4),
// // //                 Text(
// // //                   items[index].label,
// // //                   style: TextStyle(
// // //                     color: isSelected ? selectedColor : Colors.white,
// // //                     fontSize: 12,
// // //                     fontWeight: FontWeight.w500,
// // //                   ),
// // //                 ),
// // //               ],
// // //             ),
// // //           );
// // //         }),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class _NavItem {
// // //   final IconData? icon;
// // //   final String label;
// // //   final String? imagePath;

// // //   _NavItem({this.icon, required this.label, this.imagePath});
// // // }
// import 'package:flutter/material.dart';

// class CustomNavBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onTap;

//   const CustomNavBar({
//     super.key,
//     required this.selectedIndex,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     List<_NavItem> items = [
//       _NavItem(icon: Icons.tv, label: 'Channel'),
//       _NavItem(icon: Icons.movie, label: 'Movie'),
//       _NavItem(icon: Icons.sports_soccer, label: 'Matches'),
//       _NavItem(
//         imagePath: 'assets/images/00-removebg-preview.png',
//         label: 'Anime',
//       ),
//       _NavItem(icon: Icons.live_tv, label: 'Series'),
//     ];

//     return Container(
//       width: double.infinity,
//       color: const Color(0xFF1C1C1E),
//       padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: List.generate(items.length, (index) {
//           final isSelected = index == selectedIndex;
//           return GestureDetector(
//             onTap: () => onTap(index),
//             child: AnimatedContainer(
//               duration: const Duration(milliseconds: 150),
//               padding: EdgeInsets.symmetric(
//                 horizontal: isSelected ? 12 : 0,
//                 vertical: 8,
//               ),
//               decoration: BoxDecoration(
//                 color:
//                     isSelected ? const Color(0xFFFFC107) : Colors.transparent,
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               child: Row(
//                 children: [
//                   items[index].imagePath != null
//                       ? Image.asset(
//                         items[index].imagePath!,
//                         width: 24,
//                         height: 24,
//                         color: isSelected ? Colors.black : Colors.white,
//                       )
//                       : Icon(
//                         items[index].icon!,
//                         size: 24,
//                         color: isSelected ? Colors.black : Colors.white,
//                       ),
//                   if (isSelected) const SizedBox(width: 6),
//                   if (isSelected)
//                     Text(
//                       items[index].label,
//                       style: const TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                 ],
//               ),
//             ),
//           );
//         }),
//       ),
//     );
//   }
// }

// class _NavItem {
//   final IconData? icon;
//   final String label;
//   final String? imagePath;

//   _NavItem({this.icon, required this.label, this.imagePath});
// }
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const CustomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final items = [
      _NavItem(icon: Icons.tv, label: 'Channels'),
      _NavItem(icon: Icons.sports_soccer, label: 'Matches'),
    ];

    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(items.length, (index) {
          final isSelected = index == selectedIndex;

          return GestureDetector(
            onTap: () => onTap(index),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInOut,
              padding: EdgeInsets.symmetric(
                horizontal: isSelected ? 20 : 12,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                gradient: isSelected
                    ? const LinearGradient(
                        colors: [Color(0xFFFFC107), Color(0xFFFF9800)],
                      )
                    : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Icon(
                    items[index].icon!,
                    color: isSelected ? Colors.black : Colors.white,
                  ),
                  if (isSelected) const SizedBox(width: 6),
                  if (isSelected)
                    Text(
                      items[index].label,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}

class _NavItem {
  final IconData? icon;
  final String label;

  _NavItem({this.icon, required this.label});
}
