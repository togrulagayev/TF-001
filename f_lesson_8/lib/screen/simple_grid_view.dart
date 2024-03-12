import 'package:flutter/material.dart';

import '../main.dart';

class SimpleGridViewExample extends StatelessWidget {
  const SimpleGridViewExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 2,
      ),
      physics: const BouncingScrollPhysics(),
      // padding: const EdgeInsets.all(50),
      // reverse: true,
      // scrollDirection: Axis.horizontal,
      children: [
        Image.network(imageList[0]),
        Image.network(imageList[1]),
        Image.network(imageList[2]),
        Image.network(imageList[3]),
        Image.network(imageList[4]),
        Image.network(imageList[5]),
        Image.network(imageList[6]),
        Image.network(imageList[7]),
      ],
    );
  }
}
