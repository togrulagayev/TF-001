import 'package:flutter/material.dart';

import '../constants/style_constants.dart';

class TrendigsWidget extends StatelessWidget {
  const TrendigsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text(
            '@TRENDINGS',
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        Wrap(
          spacing: 5,
          children: [
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#2024',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#summer',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#collection',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#jeans',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#shirt',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#shoes',
                style: TextStyle(fontSize: 12),
              ),
            ),
            OutlinedButton(
              style: kDefaultButtonStyle,
              onPressed: () {},
              child: const Text(
                '#stylesage',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        )
      ],
    );
  }
}
