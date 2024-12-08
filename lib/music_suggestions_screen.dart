import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicSuggestionsScreen extends StatelessWidget {
   MusicSuggestionsScreen({super.key});

  final List<Map<String, String>> musicLinks = [
    {'name': 'Calm Piano', 'url': 'https://www.youtube.com/watch?v=lFcSrYw-ARY'},
    {'name': 'Relaxing Rain', 'url': 'https://www.youtube.com/watch?v=5qap5aO4i9A'},
    {'name': 'Ambient Sounds', 'url': 'https://www.youtube.com/watch?v=CySNhHVAokQ'},
    {'name': 'Ocean Waves', 'url': 'https://www.youtube.com/watch?v=4tBnF46ybZk'},
    {'name': 'Meditative Flute', 'url': 'https://www.youtube.com/watch?v=1ZYbU82GVz4'},
    {'name': 'Chill Beats', 'url': 'https://www.youtube.com/watch?v=-5KAN9_CzSA'},
    {'name': 'Forest Ambience', 'url': 'https://www.youtube.com/watch?v=ZRU1A2Wxx0I'},
  ];

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Music Suggestions'),
      ),
      body: ListView.builder(
        itemCount: musicLinks.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 5,
            child: ListTile(
              title: Text(
                musicLinks[index]['name']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: const Icon(Icons.play_circle_outline, color: Colors.blue),
              onTap: () {
                launchURL(musicLinks[index]['url']!);
              },
            ),
          );
        },
      ),
    );
  }
}
