import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Column(
        children: [
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
