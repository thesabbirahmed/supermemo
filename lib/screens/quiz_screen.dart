import 'package:flutter/material.dart';

class CreateQuizScreen extends StatefulWidget {
  @override
  _CreateQuizScreenState createState() => _CreateQuizScreenState();
}

class _CreateQuizScreenState extends State<CreateQuizScreen> {
  final TextEditingController questionController = TextEditingController();
  final TextEditingController answerController = TextEditingController();
  final List<Map<String, String>> questions = [];

  void addQuestion() {
    if (questionController.text.isNotEmpty &&
        answerController.text.isNotEmpty) {
      setState(() {
        questions.add({
          "question": questionController.text,
          "answer": answerController.text,
        });
      });
      questionController.clear();
      answerController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Quiz')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: questionController,
              decoration: InputDecoration(labelText: 'Enter Question'),
            ),
            TextField(
              controller: answerController,
              decoration: InputDecoration(labelText: 'Enter Answer'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addQuestion,
              child: Text('Add Question'),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(questions[index]['question']!),
                    subtitle: Text(questions[index]['answer']!),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Save the quiz data to database
                Navigator.pop(context);
              },
              child: Text('Save Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
