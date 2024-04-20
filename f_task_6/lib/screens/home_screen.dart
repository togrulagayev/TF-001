import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_slider.dart';
import '../widgets/newOnesCategories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svgs/menu-icon.svg',
          ),
          onPressed: () {},
        ),
        title: Text(
          'StyleSage',
          style: GoogleFonts.architectsDaughter().copyWith(fontSize: 35.0),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgs/search-icon.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/svgs/shopping-bag.svg'),
          )
        ],
      ),
      body: ListView(
        children: const [
          CustomSliderWidget(),
          NewOnesCategoriesWidget(),
        ],
      ),
    );
  }
}
