import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/network_images.dart';
import '../constants/texts.dart';

class BlogContainerWidget extends StatelessWidget {
  const BlogContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
        itemCount: blogImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.37,
                    height: MediaQuery.of(context).size.height * 0.23,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        blogImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            blogTitle,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              blogDescription,
                              textAlign: TextAlign.justify,
                              style: GoogleFonts.roboto().copyWith(
                                fontSize: 14,
                                color: const Color(0xff888888),
                              ),
                            ),
                          ),
                          Text(
                            blogDate,
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.roboto().copyWith(
                              fontSize: 14,
                              color: const Color(0xff888888),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
