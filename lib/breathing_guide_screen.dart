import 'package:flutter/material.dart';
import 'dart:async';

class BreathingGuideScreen extends StatefulWidget {
  const BreathingGuideScreen({super.key});

  @override
  State<BreathingGuideScreen> createState() => _BreathingGuideScreenState();
}

class _BreathingGuideScreenState extends State<BreathingGuideScreen> {
  String currentInstruction = 'Press Start to Begin';
  bool isBreathing = false;

  void startBreathing() {
    setState(() {
      isBreathing = true;
      currentInstruction = 'Breathe In...';
    });

    Timer(const Duration(seconds: 5), () {
      setState(() {
        currentInstruction = 'Breathe Out...';
      });
    });

    Timer(const Duration(seconds: 10), () {
      setState(() {
        currentInstruction = 'Breathing Complete';
        isBreathing = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breathing Guide'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              currentInstruction,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: isBreathing ? null : startBreathing,
              child: const Text('Start Breathing'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.greenAccent,
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
