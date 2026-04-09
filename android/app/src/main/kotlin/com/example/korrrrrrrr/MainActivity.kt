package com.example.korrrrrrrr
import android.content.pm.PackageManager
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {
    private val CHANNEL = "app_checker"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, result ->
                if (call.method == "isAppInstalled") {
                    val packageName = call.argument<String>("package_name")
                    if (packageName != null) {
                        val pm: PackageManager = applicationContext.packageManager
                        val installed = try {
                            pm.getPackageInfo(packageName, 0)
                            true
                        } catch (e: PackageManager.NameNotFoundException) {
                            false
                        }
                        result.success(installed)
                    } else {
                        result.error("INVALID", "Package name missing", null)
                    }
                } else {
                    result.notImplemented()
                }
            }
    }
}
