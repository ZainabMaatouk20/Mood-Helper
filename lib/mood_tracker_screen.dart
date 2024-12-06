import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatefulWidget {
  @override
  _MoodTrackerScreenState createState() => _MoodTrackerScreenState();
}

class _MoodTrackerScreenState extends State<MoodTrackerScreen> {
  String selectedMood = '';
  final Map<String, String> moodQuotes = {
    'Happy': 'Keep smiling! Life is beautiful.',
    'Sad': 'This too shall pass. Stay strong!',
    'Angry': 'Take a deep breath and let it go.',
    'Stressed': 'You’re doing better than you think.',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mood Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            DropdownButton<String>(
              value: selectedMood.isNotEmpty ? selectedMood : null,
              hint: Text('Select your mood'),
              items: moodQuotes.keys.map((mood) {
                return DropdownMenuItem(
                  value: mood,
                  child: Text(mood),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedMood = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Text(
              selectedMood.isNotEmpty ? moodQuotes[selectedMood]! : 'Select a mood to see a quote',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
