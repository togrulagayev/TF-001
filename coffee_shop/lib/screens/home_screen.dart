import 'package:flutter/material.dart';

import '../widgets/home/home_container.dart';
import '../widgets/home/home_navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeContainerWidget(),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
