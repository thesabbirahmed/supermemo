import 'package:flutter/material.dart';

class AddScheduleScreen extends StatefulWidget {
  @override
  _AddScheduleScreenState createState() => _AddScheduleScreenState();
}

class _AddScheduleScreenState extends State<AddScheduleScreen> {
  final TextEditingController titleController = TextEditingController();
  DateTime? selectedDate;

  void pickDate(BuildContext context) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );

    if (date != null) {
      setState(() {
        selectedDate = date;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Schedule')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Schedule Title'),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Text(selectedDate == null
                      ? 'No Date Chosen!'
                      : 'Selected Date: ${selectedDate.toString()}'),
                ),
                TextButton(
                  onPressed: () => pickDate(context),
                  child: Text('Choose Date'),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Save the schedule to database
                Navigator.pop(context);
              },
              child: Text('Save Schedule'),
            ),
          ],
        ),
      ),
    );
  }
}
// TODO Implement this library.