import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/network_images.dart';

class MiniSliderWidget extends StatefulWidget {
  const MiniSliderWidget({super.key});

  @override
  State<MiniSliderWidget> createState() => _MiniSliderWidgetState();
}

class _MiniSliderWidgetState extends State<MiniSliderWidget> {
  var currentIndex = 0;
  final _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            'JUST FOR YOU',
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
                  // color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: miniSliderImages.length,
          itemBuilder: (context, index, realIndex) {
            return Column(
              children: [
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          miniSliderImages[index],
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
                const Text('Shoes'),
                const Text(
                  '\$ 100.00',
                  style: TextStyle(
                    color: Color(0xFFF93C00),
                  ),
                ),
              ],
            );
          },
          options: CarouselOptions(
            viewportFraction: 0.4,
            autoPlay: false,
            disableCenter: true,
            enableInfiniteScroll: false,
            padEnds: false,
            onPageChanged: (index, reason) => setState(() {
              currentIndex = index;
            }),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex,
          count: miniSliderImages.length,
          effect: const ExpandingDotsEffect(),
        ),
      ],
    );
  }
}
