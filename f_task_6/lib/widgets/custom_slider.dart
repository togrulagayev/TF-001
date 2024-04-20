import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/network_images.dart';

class CustomSliderWidget extends StatefulWidget {
  const CustomSliderWidget({
    super.key,
  });

  @override
  State<CustomSliderWidget> createState() => _CustomSliderWidgetState();
}

class _CustomSliderWidgetState extends State<CustomSliderWidget> {
  var currentIndex = 0;
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: 4,
          itemBuilder: (context, index, realIndex) {
            return Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        sliderImages[index],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  right: 20,
                  child: Text(
                    'Prosto',
                    style: GoogleFonts.actor().copyWith(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            viewportFraction: 1,
            aspectRatio: 9 / 13.5,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            initialPage: 0,
            enableInfiniteScroll: false,
            onPageChanged: (index, reason) => setState(() {
              currentIndex = index;
            }),
          ),
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: sliderImages.length,
          effect: const ExpandingDotsEffect(),
        ),
      ],
    );
  }
}
