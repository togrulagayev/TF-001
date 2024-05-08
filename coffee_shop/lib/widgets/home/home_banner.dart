import 'package:flutter/material.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 210,
      left: 24,
      right: 24,
      child: Center(
        child: SizedBox(
          width: 327,
          height: 140,
          child: Image.asset('assets/images/banner.png', fit: BoxFit.cover),
        ),
      ),
    );
  }
}
