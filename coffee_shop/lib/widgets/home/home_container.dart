import 'package:flutter/material.dart';

import 'home_banner.dart';
import 'home_location.dart';
import 'home_search.dart';

class HomeContainerWidget extends StatelessWidget {
  const HomeContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 280,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff111111),
                  Color(0xff313131),
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          const HomeLocationWidget(),
          const SizedBox(height: 24),
          const HomeSearchWidget(),
          const HomeBannerWidget(),
        ],
      ),
    );
  }
}
