import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/network_images.dart';

class FollowUsWidget extends StatefulWidget {
  const FollowUsWidget({super.key});

  @override
  State<FollowUsWidget> createState() => _FollowUsWidgetState();
}

class _FollowUsWidgetState extends State<FollowUsWidget> {
  var currentIndex = 0;
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Text(
            "FOLLOWS US",
            style: GoogleFonts.roboto()
                .copyWith(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          CarouselSlider.builder(
            carouselController: _controller,
            itemCount: instaSliderImage.length,
            itemBuilder: (context, index, realIndex) {
              return Column(
                children: [
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          width: 190,
                          height: 600,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                instaSliderImage[index],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 10,
                          child: SvgPicture.asset(
                            "assets/svgs/instagram.svg",
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                            height: 30,
                            width: 30,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          left: 10,
                          child: Text(
                            namesList[index],
                            style: GoogleFonts.roboto()
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 0.6,
              aspectRatio: 13 / 9,
              initialPage: 0,
              enableInfiniteScroll: false,
              autoPlay: false,
              padEnds: false,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              onPageChanged: (index, reason) => setState(
                () {
                  currentIndex = index;
                },
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                child: Text(
                  "About",
                  style: GoogleFonts.aBeeZee()
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Text(
                "Contact",
                style: GoogleFonts.aBeeZee()
                    .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
              ),
              Text("Blog",
                  style: GoogleFonts.aBeeZee()
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 15))
            ],
          ),
          const Spacer(),
          const SizedBox(
            width: 200,
            height: 90,
            child: Text(
              'support@stylesage.design (229) 555-0109\n07:00 - 21:00 - Everyday',
              textAlign: TextAlign.center,
              strutStyle: StrutStyle(height: 2.3),
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff888888),
              ),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Spacer(
                flex: 3,
              ),
              SvgPicture.asset("assets/svgs/youtube.svg"),
              const Spacer(),
              SvgPicture.asset("assets/svgs/instagram.svg"),
              const Spacer(),
              SvgPicture.asset("assets/svgs/twitter.svg"),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
          const Spacer(),
          const Text("CopyrightÂ© StyleSage All Rights Reserved."),
          const Spacer(),
        ],
      ),
    );
  }
}
