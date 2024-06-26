import 'package:f_task_6/widgets/follow_us.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/about_container.dart';
import '../widgets/collection_widget.dart';
import '../widgets/custom_slider.dart';
import '../widgets/mini_slider.dart';
import '../widgets/new_ones_categories.dart';
import '../widgets/trendings_widget.dart';

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
        shrinkWrap: true,
        children: const [
          CustomSliderWidget(),
          NewOnesCategoriesWidget(),
          SizedBox(height: 60),
          CollectionWidget(),
          SizedBox(height: 60),
          MiniSliderWidget(),
          SizedBox(height: 60),
          TrendigsWidget(),
          SizedBox(height: 60),
          AboutContainerWidget(),
          SizedBox(height: 60),
          FollowUsWidget(),
        ],
      ),
    );
  }
}
