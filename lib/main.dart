import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'mood_tracker_screen.dart';
import 'breathing_guide_screen.dart';
import 'anger_management_screen.dart';
import 'music_suggestions_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mood Helper',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Roboto',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        scaffoldBackgroundColor: const Color(0xFFEFEFEF), // Soft neutral background
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          elevation: 2,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/mood-tracker': (context) => const MoodTrackerScreen(),
        '/breathing-guide': (context) => const BreathingGuideScreen(),
        '/anger-management': (context) => AngerManagementScreen(),
        '/music-suggestions': (context) => MusicSuggestionsScreen(),
      },
    );
  }
}

