import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/schedule_provider.dart';

class ScheduleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scheduleProvider = Provider.of<ScheduleProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Schedule'),
      ),
      body: scheduleProvider.isLoading
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
        itemCount: scheduleProvider.schedules.length,
        itemBuilder: (context, index) {
          final schedule = scheduleProvider.schedules[index];
          return ListTile(
            title: Text(schedule.title),
            subtitle: Text(schedule.dateTime.toString()),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                scheduleProvider.deleteSchedule(schedule.id);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to Add Schedule Screen
          Navigator.pushNamed(context, '/add_schedule');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
