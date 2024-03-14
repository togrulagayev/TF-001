import 'package:flutter/material.dart';

import '../main.dart';

class GridViewCountExample extends StatelessWidget {
  const GridViewCountExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        scrollDirection: Axis.horizontal,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        crossAxisCount: 3,
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
      ),
    );
  }
}
