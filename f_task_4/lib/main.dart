import 'package:f_task_4/screens/profile_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(color: Colors.black),
          colorScheme: const ColorScheme.dark(background: Colors.black)),
      home: const ProfileScreen(),
    );
  }
}
