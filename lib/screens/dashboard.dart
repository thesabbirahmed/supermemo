import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildDashboardTile(
              context,
              icon: Icons.schedule,
              title: 'Schedule',
              route: '/schedule',
            ),
            _buildDashboardTile(
              context,
              icon: Icons.quiz,
              title: 'Quiz',
              route: '/quiz',
            ),
            _buildDashboardTile(
              context,
              icon: Icons.bar_chart,
              title: 'Progress',
              route: '/progress',
            ),
            _buildDashboardTile(
              context,
              icon: Icons.menu_book,
              title: 'Resources',
              route: '/resources',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardTile(BuildContext context,
      {required IconData icon, required String title, required String route}) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.withOpacity(0.1),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48.0, color: Colors.blue),
            const SizedBox(height: 8.0),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
