import 'package:flutter/material.dart';

class DetailDescriptionWidget extends StatelessWidget {
  const DetailDescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      textAlign: TextAlign.justify,
      TextSpan(
        text:
            'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the fo.. ',
        style: TextStyle(
          fontFamily: 'Sora',
          fontSize: 14,
          fontWeight: FontWeight.w100,
        ),
        children: [
          TextSpan(
            text: 'Read More',
            style: TextStyle(
              color: Color(0xffC67C4E),
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
