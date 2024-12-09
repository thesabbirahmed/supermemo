import '../models/schedule_model.dart';

class ScheduleService {
  static Future<List<ScheduleModel>> getSchedules() async {
    await Future.delayed(const Duration(seconds: 2)); // Simulate API call
    return [
      ScheduleModel(id: '1', title: 'Meeting', dateTime: DateTime.now()),
      ScheduleModel(id: '2', title: 'Workout', dateTime: DateTime.now().add(const Duration(days: 1))),
    ];
  }

  static Future<void> addSchedule(ScheduleModel schedule) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate backend save
  }

  static Future<void> deleteSchedule(String scheduleId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate backend delete
  }
}
