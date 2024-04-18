import 'package:carousel_slider/carousel_slider.dart';
import 'package:f_task_6/constants/network_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// import 'screens/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var controller = CarouselController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
            ),
          ],
        ),
        body: Column(
          children: [
            CarouselSlider.builder(
              carouselController: controller,
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
                aspectRatio: 9 / 16,
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
        ),
      ),
    );
  }
}
