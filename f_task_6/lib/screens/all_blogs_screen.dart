import 'package:f_task_6/widgets/about_us.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../functions/default_appbar.dart';
import '../widgets/blog_categories.dart';
import '../widgets/blog_container.dart';

class AllBlogsScreen extends StatelessWidget {
  const AllBlogsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              bottom: 20,
            ),
            child: Center(
              child: Text(
                'BLOG',
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const BlogCategoriesWidget(),
          const BlogContainerWidget(),
          const SizedBox(
            height: 50,
          ),
          Center(
            child: OutlinedButton(
              onPressed: () {},
              child: const Text('SEE MORE'),
            ),
          ),
          const SizedBox(
            height: 70,
          ),
          const AboutUs(),
        ],
      ),
    );
  }
}
