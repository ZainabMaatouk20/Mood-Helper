import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatefulWidget {
  const MoodTrackerScreen({super.key});

  @override
  State<MoodTrackerScreen> createState() => _MoodTrackerScreenState();
}

class _MoodTrackerScreenState extends State<MoodTrackerScreen> {
  final List<Map<String, String>> moods = [
    {'mood': 'Happy', 'emoji': '😊'},
    {'mood': 'Sad', 'emoji': '😢'},
    {'mood': 'Angry', 'emoji': '😡'},
    {'mood': 'Excited', 'emoji': '🤩'},
    {'mood': 'Calm', 'emoji': '😌'},
  ];

  String selectedMood = 'Happy';
  String currentQuote = 'Happiness is contagious!';
  final Map<String, List<String>> moodQuotes = {
    'Happy': [
      'Happiness is contagious!',
      'Smile, and the world smiles with you.',
      'Joy is the simplest form of gratitude.',
    ],
    'Sad': [
      'It’s okay to feel sad. This too shall pass.',
      'Tears cleanse the soul.',
      'Take it one step at a time.',
    ],
    'Angry': [
      'Count to ten and breathe.',
      'Anger doesn’t solve problems.',
      'Find peace within yourself.',
    ],
    'Excited': [
      'Share your excitement!',
      'Every moment counts!',
      'Life is full of thrill!',
    ],
    'Calm': [
      'Peace is your superpower.',
      'Stay grounded and breathe.',
      'Calmness conquers all chaos.',
    ],
  };

  void updateQuote() {
    final quotes = moodQuotes[selectedMood]!;
    setState(() {
      currentQuote = quotes[DateTime.now().millisecond % quotes.length];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mood Tracker'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Select Your Mood',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal,
                ),
              ),
              const SizedBox(height: 20),
              Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                children: moods.map((mood) {
                  final isSelected = mood['mood'] == selectedMood;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedMood = mood['mood']!;
                        currentQuote = moodQuotes[selectedMood]![0];
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          mood['emoji']!,
                          style: TextStyle(
                            fontSize: 40,
                            color: isSelected ? Colors.teal : Colors.black,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          mood['mood']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected ? Colors.teal : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  currentQuote,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: updateQuote,
                child: const Text('Get New Quote'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.teal, // Changed button background color
                  foregroundColor: Colors.white, // Ensures text is readable
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
