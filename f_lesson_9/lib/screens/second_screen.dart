import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            // ! Navigator.pop bir screen'den evvelki screen'e kecid temin edir.
            Navigator.pop(context);
          },
          icon: const Icon(Icons.abc_outlined),
        ),
        title: const Text('Second Screen'),
      ),
      body: const Center(
        child: Text('You are in second screen'),
      ),
    );
  }
}
