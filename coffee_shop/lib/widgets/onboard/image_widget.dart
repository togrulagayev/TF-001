import 'package:flutter/material.dart';

class OnBoardImageWidget extends StatelessWidget {
  const OnBoardImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 1.5,
      child: Image.asset(
        'assets/images/onboard.png',
        fit: BoxFit.cover,
      ),
    );
  }
}
