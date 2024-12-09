import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Tracker')),
      body: LineChart(
        LineChartData(
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(1, 2),
                FlSpot(2, 3),
                FlSpot(3, 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
