import 'package:flutter/material.dart';

class ResourcesScreen extends StatelessWidget {
  final List<Map<String, String>> resources = [
    {"title": "Math Notes", "link": "https://example.com/math-notes"},
    {"title": "Science Flashcards", "link": "https://example.com/science-flashcards"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Resources')),
      body: ListView.builder(
        itemCount: resources.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(resources[index]['title']!),
            subtitle: Text(resources[index]['link']!),
            onTap: () {
              // Open the resource link
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Opening ${resources[index]['title']}')));
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add new resource screen
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
