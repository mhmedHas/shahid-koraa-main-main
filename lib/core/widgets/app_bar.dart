// import 'package:flutter/material.dart';

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final bool showBackButton;
//   final List<Widget>? actions;
//   final VoidCallback? onBackPressed;

//   const CustomAppBar({
//     super.key,
//     required this.title,
//     this.showBackButton = true,
//     this.actions,
//     this.onBackPressed,
//   });

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       centerTitle: true,
//       // leading:
//       //     showBackButton
//       //         ? IconButton(
//       //           icon: Container(
//       //             padding: const EdgeInsets.all(8),
//       //             decoration: BoxDecoration(
//       //               color: Colors.white.withOpacity(0.2),
//       //               borderRadius: BorderRadius.circular(10),
//       //             ),
//       //             child: const Icon(
//       //               Icons.arrow_back_ios_new_rounded,
//       //               color: Colors.white,
//       //               size: 20,
//       //             ),
//       //           ),
//       //           onPressed: onBackPressed ?? () => Navigator.of(context).pop(),
//       //         )
//       //         : null,
//       title: Text(
//         title,
//         style: const TextStyle(
//           color: Colors.white,
//           fontSize: 24,
//           fontWeight: FontWeight.bold,
//           letterSpacing: 1.2,
//         ),
//       ),
//       actions: actions,
//       flexibleSpace: Container(
//         decoration: BoxDecoration(
//           // borderRadius: const BorderRadius.only(
//           //   bottomLeft: Radius.circular(30),
//           //   bottomRight: Radius.circular(30),
//           // ),
//           gradient: LinearGradient(
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//             colors: [Colors.black, Colors.black],
//           ),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black.withOpacity(0.2),
//               spreadRadius: 2,
//               blurRadius: 10,
//               offset: const Offset(0, 3),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
