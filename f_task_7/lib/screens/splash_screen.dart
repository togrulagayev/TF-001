import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:f_task_7/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Image.network(
        'https://buffer.com/library/content/images/2023/10/free-images.jpg',
      ),
      nextScreen: const HomeScreen(),
      duration: 3000,
      animationDuration: const Duration(milliseconds: 2000),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      curve: Curves.bounceInOut,
      splashIconSize: 600,
      // centered: false,
      splashTransition: SplashTransition.rotationTransition,
    );
  }
}
