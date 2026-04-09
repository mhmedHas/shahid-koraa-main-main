// // import 'package:flutter/foundation.dart';
// // import 'package:flutter/material.dart';
// // import 'package:device_preview/device_preview.dart';
// // import 'package:koraa/screens/login.dart';
// // import 'package:koraa/widget/splash.dart';

// // import 'package:flutter_screenutil/flutter_screenutil.dart';

// // void main() {
// //   runApp(
// //     DevicePreview(
// //       enabled: !kReleaseMode,
// //       builder:
// //           (context) => ScreenUtilInit(
// //             designSize: Size(
// //               375,
// //               812,
// //             ), // مقاس التصميم الأساسي (مثلاً iPhone 11)
// //             builder: (_, child) => MyApp(),
// //           ),
// //     ),
// //   );
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       useInheritedMediaQuery: true,
// //       locale: DevicePreview.locale(context),
// //       builder: DevicePreview.appBuilder,
// //       debugShowCheckedModeBanner: false,
// //       home: Splash(),
// //     );
// //   }
// // }
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// import 'package:koraa/widget/splash.dart';

// void main() {
//   runApp(
//     DevicePreview(
//       enabled: !kReleaseMode,
//       builder:
//           (context) => ScreenUtilInit(
//             designSize: const Size(
//               375,
//               812,
//             ), // مقاس التصميم الأساسي (iPhone 11 مثلاً)
//             minTextAdapt: true,
//             splitScreenMode: true,
//             builder: (context, child) => MyApp(child: child),
//           ),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   final Widget? child;

//   const MyApp({super.key, this.child});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       useInheritedMediaQuery: true,
//       locale: DevicePreview.locale(context),
//       builder: DevicePreview.appBuilder,
//       debugShowCheckedModeBanner: false,
//       home: child ?? Splash(),
//     );
//   }
// }
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:korrrrrrrr/sp.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// أو login.dart لو الصفحة الرئيسية مختلفة

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // مهم
  await Firebase.initializeApp();
  await Supabase.initialize(
    url: 'https://kxolavtcittibvaigtlt.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt4b2xhdnRjaXR0aWJ2YWlndGx0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTQyNDkwMDQsImV4cCI6MjA2OTgyNTAwNH0.jkK5vL8dCKLpaWjqzAFBD1Jaj2JCm9ZCTQtPLzfMOyI',
  );

  runApp(
    DevicePreview(
      enabled: false, // يعمل فقط في وضع التطوير
      builder: (context) => ScreenUtilInit(
        designSize: const Size(
          375,
          812,
        ), // مقاس التصميم الأساسي (مثلاً iPhone 11)
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MyApp(child: child),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  final Widget? child;

  const MyApp({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      // locale: DevicePreview.locale(context),
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: child ?? sp(), // تأكد من وجود Splash أو غيّرها حسب البداية
    );
  }
}
