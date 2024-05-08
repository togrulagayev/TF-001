import 'package:flutter/material.dart';

import 'button_widget.dart';

class OnboardContainerWidget extends StatelessWidget {
  const OnboardContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height * 0.6,
      left: MediaQuery.of(context).size.width * 0.14,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.76,
        child: const Column(
          children: [
            Text(
              'Fall in Love with Coffee in Blissful Delight!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 34.0,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              'Welcome to our cozy coffee corner, where every cup is a delightful for you.',
              style: TextStyle(
                color: Color(0xFFA9A9A9),
                fontSize: 14.0,
                fontFamily: 'Sora',
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            OnboardButtonWidget(),
          ],
        ),
      ),
    );
  }
}
