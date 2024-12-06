import 'package:flutter/material.dart';
import 'mood_tracker_screen.dart';
import 'breathing_guide_screen.dart';
import 'anger_management_screen.dart';
import 'music_suggestions_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Helper'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => MoodTrackerScreen()));
              },
              child: Text('Mood Tracker'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => BreathingGuideScreen()));
              },
              child: Text('Breathing Guide'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => AngerManagementScreen()));
              },
              child: Text('Anger Management Tips'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => MusicSuggestionsScreen()));
              },
              child: Text('Music Suggestions'),
            ),
          ],
        ),
      ),
    );
  }
}
