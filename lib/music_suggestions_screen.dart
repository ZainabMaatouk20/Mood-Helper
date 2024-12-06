import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicSuggestionsScreen extends StatelessWidget {
  final List<String> musicLinks = [
    'https://www.youtube.com/watch?v=5qap5aO4i9A',
    'https://www.youtube.com/watch?v=lFcSrYw-ARY',
  ];

  Future<void> launchURL(String url) async {
    final Uri uri = Uri.parse(url); // Convert the string URL to a Uri object
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
        title: Text('Music Suggestions'),
      ),
      body: ListView.builder(
        itemCount: musicLinks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Music ${index + 1}'),
            trailing: Icon(Icons.open_in_new),
            onTap: () {
              launchURL(musicLinks[index]);
            },
          );
        },
      ),
    );
  }
}
