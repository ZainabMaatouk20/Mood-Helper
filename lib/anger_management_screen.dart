import 'package:flutter/material.dart';

class AngerManagementScreen extends StatelessWidget {
  AngerManagementScreen({super.key});

  final List<String> tips = [
    'Count to 10 before reacting.',
    'Take a walk to calm yourself.',
    'Write your feelings instead of arguing.',
    'Breathe deeply for a minute.',
    'Focus on things you can control.',
    'Practice progressive muscle relaxation.',
    'Take a cold glass of water and relax.',
    'Think before you speak.',
    'Identify possible solutions instead of blaming others.',
    'Practice forgiveness for yourself and others.',
    'Use humor to release tension.',
    'Listen to calming music.',
    'Step away from the situation.',
    'Visualize a peaceful environment.',
    'Repeat a calming mantra, like “I’m in control.”',
    'Meditate for five minutes.',
    'Write in a journal about what angers you.',
    'Focus on gratitude and things you’re thankful for.',
    'Practice positive affirmations.',
    'Take a yoga or stretching break.',
  ];

  List<String> getTodayTips() {
    // Calculate today’s tips based on the current date.
    final dayOfMonth = DateTime.now().day;
    final startIndex = (dayOfMonth % 10) * 2; // 2 tips per day, cycling every 10 days
    return tips.sublist(startIndex, startIndex + 2);
  }

  @override
  Widget build(BuildContext context) {
    final todayTips = getTodayTips();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Anger Management Tips'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Today\'s Tips',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              const SizedBox(height: 20),
              ...todayTips.map((tip) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    tip,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, color: Colors.black87),
                  ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
