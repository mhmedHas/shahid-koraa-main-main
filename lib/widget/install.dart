import 'package:flutter/services.dart';

class AppChecker {
  static const MethodChannel _channel = MethodChannel('app_checker');

  /// ترجع true لو التطبيق بالباكدج [packageName] مثبت، غير كده false
  static Future<bool> isAppInstalledd(String packageName) async {
    try {
      final bool? result = await _channel.invokeMethod<bool>('isAppInstalled', {
        'package_name': packageName,
      });
      return result ?? false;
    } catch (_) {
      return false;
    }
  }
}
