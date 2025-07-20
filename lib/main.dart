import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/story_screen.dart';
import 'screens/ending_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Twine Story App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 18),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/story': (context) => const StoryScreen(),
        '/ending': (context) => const EndingScreen(),
      },
    );
  }
}
