import 'package:f_task_6/constants/network_images.dart';
import 'package:f_task_6/constants/texts.dart';
import 'package:f_task_6/widgets/about_us.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../functions/default_appbar.dart';
import '../widgets/blog_image.dart';
import '../widgets/blog_text.dart';

class BlogScreen extends StatelessWidget {
  const BlogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 30.0,
              left: 20.0,
              right: 20.0,
              bottom: 30.0,
            ),
            child: Row(
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const FaIcon(
                    FontAwesomeIcons.chevronLeft,
                    size: 20,
                  ),
                  label: const Text(
                    'Back',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  style: const ButtonStyle(
                    foregroundColor: MaterialStatePropertyAll(Colors.black),
                  ),
                ),
                const Spacer(),
                const Text(
                  'Posted by StyleSage | 1 Days ago',
                  style: TextStyle(
                    color: Color(0xff888888),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 250.0,
            child: Image.network(
              blogImage,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "2023 Style Guide: Summer's Biggest Trends",
            textAlign: TextAlign.center,
            style: GoogleFonts.roboto().copyWith(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const BlogTextWidget(blogText),
          const BlogImageWidget(),
          const BlogImageWidget(),
          const BlogImageWidget(),
          const BlogTextWidget(blogText2),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0.0),
                  foregroundColor: MaterialStatePropertyAll(
                    Color(0xff000000),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFFF1F1F1),
                  ),
                ),
                child: const Text('#Fashion'),
              ),
              const SizedBox(
                width: 10.0,
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(0.0),
                  foregroundColor: MaterialStatePropertyAll(
                    Color(0xff000000),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFFF1F1F1),
                  ),
                ),
                child: const Text('#Trends'),
              ),
            ],
          ),
          const SizedBox(
            height: 40.0,
          ),
          const AboutUs(),
        ],
      ),
    );
  }
}
