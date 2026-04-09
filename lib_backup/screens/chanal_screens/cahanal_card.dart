import 'package:android_intent_plus/android_intent.dart';
import 'package:android_intent_plus/flag.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class Channel {
  final String name;
  final String logoPath;
  final String quality;
  final String type;
  final String Link;

  Channel({
    required this.Link,
    required this.name,
    required this.logoPath,
    required this.quality,
    required this.type,
  });
}

class ChannelCard extends StatelessWidget {
  final Channel channel;

  const ChannelCard({super.key, required this.channel});

  Future<void> playVideoExternally(BuildContext context) async {
    if (channel.Link.isEmpty) {
      // لو مفيش رابط
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('لا يوجد رابط مشاهدة'),
          content: const Text(
            'عذرًا، لا يتوفر رابط مشاهدة لهذا الفيلم/المسلسل حاليًا.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('حسناً'),
            ),
          ],
        ),
      );
      return;
    }

    String videoUrl = channel.Link;
    try {
      final intent = AndroidIntent(
        action: 'action_view',
        data: videoUrl,
        type: 'video/*',
        flags: <int>[Flag.FLAG_ACTIVITY_NEW_TASK, Flag.FLAG_ACTIVITY_CLEAR_TOP],
      );
      await intent.launch();
    } catch (e) {
      print('Error launching intent: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('تعذر فتح الرابط مباشرة. جارٍ مشاركة الرابط.'),
          backgroundColor: Colors.red,
        ),
      );
      await Share.share(videoUrl);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => playVideoExternally(context), // الضغط على البطاقة
      child: SizedBox(
        height: 220,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                channel.logoPath,
                width: 40,
                height: 40,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 6),
              Text(
                channel.name,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
              const SizedBox(height: 4),
              Chip(
                label: Text(channel.quality),
                backgroundColor: Colors.green,
                labelStyle: const TextStyle(color: Colors.white, fontSize: 10),
                visualDensity: VisualDensity.compact,
                padding: const EdgeInsets.symmetric(horizontal: 6),
              ),
              const Spacer(),
              SizedBox(
                height: 28,
                child: ElevatedButton.icon(
                  onPressed: () =>
                      playVideoExternally(context), // الضغط على الزر
                  icon: const Icon(Icons.play_arrow, size: 16),
                  label: const Text('مشاهدة'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    textStyle: const TextStyle(fontSize: 11),
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    minimumSize: const Size.fromHeight(28),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
