import 'package:flutter/material.dart';
import '../models/schedule_model.dart';
import '../services/schedule_service.dart';

class ScheduleProvider with ChangeNotifier {
  List<ScheduleModel> _schedules = [];
  bool _isLoading = false;

  List<ScheduleModel> get schedules => _schedules;
  bool get isLoading => _isLoading;

  Future<void> fetchSchedules() async {
    _isLoading = true;
    notifyListeners();
    try {
      _schedules = await ScheduleService.getSchedules();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> addSchedule(ScheduleModel schedule) async {
    await ScheduleService.addSchedule(schedule);
    _schedules.add(schedule);
    notifyListeners();
  }

  Future<void> deleteSchedule(String scheduleId) async {
    await ScheduleService.deleteSchedule(scheduleId);
    _schedules.removeWhere((schedule) => schedule.id == scheduleId);
    notifyListeners();
  }
}
