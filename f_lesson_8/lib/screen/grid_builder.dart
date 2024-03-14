import 'package:flutter/material.dart';

import '../main.dart';

class GridViewBuilderExample extends StatelessWidget {
  const GridViewBuilderExample({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: imageList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return Image.network(imageList[index]);
        },
      ),
    );
  }
}
