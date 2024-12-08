import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Helper'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFB3E5FC), Color(0xFF81D4FA)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Emoji banner (network image)
              Image.network(
               'https://t4.ftcdn.net/jpg/03/18/70/93/360_F_318709301_8hVmIBXTrEWD8idOCc2YXkcH210QOd7M.jpg', // Replace with your emoji image URL
                height: 200,
                width: 400,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return const Text(
                    'Failed to load image',
                    style: TextStyle(color: Colors.red),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to Mood Helper',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/mood-tracker'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.greenAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Mood Tracker'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/breathing-guide'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Breathing Guide'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/anger-management'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Anger Management Tips'),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/music-suggestions'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                child: const Text('Music Suggestions'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




