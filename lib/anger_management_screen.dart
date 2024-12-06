import 'package:flutter/material.dart';
import 'dart:math';

class AngerManagementScreen extends StatelessWidget {
  final List<String> tips = [
    'Count to 10 before reacting.',
    'Take a deep breath and step away.',
    'Write down your thoughts.',
    'Take a short walk.',
    'Drink a glass of water.',
  ];

  String getRandomTip() {
    return tips[Random().nextInt(tips.length)];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anger Management Tips'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tip:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              getRandomTip(),
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
