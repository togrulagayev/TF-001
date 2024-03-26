import 'package:flutter/material.dart';

import '../constants/constants.dart';

class CustomCategoriesWidget extends StatelessWidget {
  const CustomCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: pngList.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              margin: const EdgeInsets.only(right: 20),
              child: Image.network(
                pngList[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
