import 'package:flutter/material.dart';

import '../constants/texts.dart';

class BlogCategoriesWidget extends StatelessWidget {
  const BlogCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(),
        itemCount: blogCategories.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 10,
              bottom: 8,
              top: 8,
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
              ),
              child: Text(blogCategories[index]),
            ),
          );
        },
      ),
    );
  }
}
