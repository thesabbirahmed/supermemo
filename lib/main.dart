import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
// import 'screens/quiz_screen.dart';

import 'utils/theme.dart';
import 'providers/schedule_provider.dart';
import 'providers/quiz_provider.dart';
import 'screens/splash_screen.dart';
import 'screens/dashboard.dart';
import 'screens/schedule_screen.dart';
// import 'screens/quiz_screen.dart';
import 'screens/progress_screen.dart';
import 'screens/resources_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); // Firebase initialization

  runApp(const SuperMemoApp());
}

class SuperMemoApp extends StatelessWidget {
  const SuperMemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ScheduleProvider()),
        ChangeNotifierProvider(create: (_) => QuizProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light, // Change to ThemeMode.dark for dark theme
        initialRoute: '/',
        routes: {
          '/': (context) => SplashScreen(),
          '/dashboard': (context) => Dashboard(),
          '/schedule': (context) => ScheduleScreen(),
          // '/quiz': (context) => QuizScreen(),
          '/progress': (context) => ProgressScreen(),
          '/resources': (context) => ResourcesScreen(),
        },
      ),
    );
  }
}
