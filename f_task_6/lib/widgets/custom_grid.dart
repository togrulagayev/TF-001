import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomGridWidget extends StatelessWidget {
  final int x;
  final int y;
  const CustomGridWidget(
    this.x,
    this.y, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/card$x.png',
                fit: BoxFit.cover,
              ),
              Text(
                'Short sleeve polo shirt',
                style: GoogleFonts.roboto().copyWith(fontSize: 13.0),
              ),
              Text(
                '\$179',
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFF93C00),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/card$y.png',
                fit: BoxFit.cover,
              ),
              Text(
                'Short sleeve polo shirt',
                style: GoogleFonts.roboto().copyWith(fontSize: 13.0),
              ),
              Text(
                '\$179',
                style: GoogleFonts.roboto().copyWith(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFF93C00),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
