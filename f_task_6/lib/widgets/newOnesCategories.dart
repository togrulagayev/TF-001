import 'package:f_task_6/widgets/custom_grid.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NewOnesCategoriesWidget extends StatelessWidget {
  const NewOnesCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 70.0, bottom: 20.0),
          child: Text(
            'NEW ONES',
            style: GoogleFonts.roboto().copyWith(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text(
                'All',
                style: TextStyle(
                  color: Color(0xFFF93C00),
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Shoes',
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Jeans',
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'T-shirt',
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontSize: 16,
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Headwear',
                style: TextStyle(
                  color: Color(0xFF888888),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        const CustomGridWidget(1, 2),
        const CustomGridWidget(3, 4),
        Padding(
          padding: const EdgeInsets.only(top: 30.0, bottom: 40.0),
          child: OutlinedButton.icon(
            style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(
                Color(0xFF000000),
              ),
              minimumSize: MaterialStatePropertyAll(
                Size(199, 48),
              ),
            ),
            onPressed: () {},
            label: const FaIcon(
              FontAwesomeIcons.chevronRight,
              size: 18,
            ),
            icon: const Text(
              'EXPLORE MORE',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ],
    );
  }
}
