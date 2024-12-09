import 'package:flutter/material.dart';

class MindfulnessScreen extends StatelessWidget {
  final List<String> exercises = [
    "5-Minute Breathing Exercise",
    "10-Minute Guided Meditation",
    "Gratitude Journaling",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mindfulness Exercises')),
      body: ListView.builder(
        itemCount: exercises.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(exercises[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Starting ${exercises[index]}...")));
            },
          );
        },
      ),
    );
  }
}
