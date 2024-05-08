import 'package:flutter/material.dart';

import '../widgets/onboard/container_widget.dart';
import '../widgets/onboard/image_widget.dart';

class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            OnBoardImageWidget(),
            OnboardContainerWidget(),
          ],
        ),
      ),
    );
  }
}
