import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> pages = [
    'Welcome to SuperMemo! Revolutionize your study routine.',
    'Plan smarter with AI-powered schedules.',
    'Track progress and achieve more.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (context, index) {
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                pages[index],
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}
