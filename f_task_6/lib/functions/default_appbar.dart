import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar defaultAppBar() {
  return AppBar(
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
  );
}
