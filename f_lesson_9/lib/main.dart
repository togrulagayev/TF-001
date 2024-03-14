import 'package:f_lesson_9/screens/first_screen.dart';
import 'package:flutter/material.dart';

import 'screens/second_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Screen Navigation'),
          centerTitle: true,
        ),
        body: const HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          OutlinedButton(
            onPressed: () {
              // ! Navigator.push bir screen'den digerine kecid temin edir.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const FirstScreen(),
                ),
              );
            },
            child: const Text('first screen'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SecondScreen(),
                ),
              );
            },
            child: const Text('second screen'),
          ),
        ],
      ),
    );
  }
}
