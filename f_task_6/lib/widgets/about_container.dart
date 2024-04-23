import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutContainerWidget extends StatelessWidget {
  const AboutContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 1.7,
      color: const Color(0xFFF1F1F1),
      child: Column(
        children: [
          const Spacer(),
          Text(
            ' StyleSage',
            style: GoogleFonts.abel().copyWith(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: const Text(
              'We are proud to design and deliver quality and comfortable clothing for you.',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/svgs/truck-icon.svg'),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const Text(
              'Fast shipping. Free on orders over \$10.',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/svgs/task-done-icon.svg'),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const Text(
              'Sustainable process from start to finish.',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/svgs/user-check-icon.svg'),
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            child: const Text(
              'Unique designs and high-quality materials.',
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
