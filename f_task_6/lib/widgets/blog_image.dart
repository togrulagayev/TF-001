import 'package:flutter/material.dart';

import '../constants/network_images.dart';

class BlogImageWidget extends StatelessWidget {
  const BlogImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 12.0,
        right: 12.0,
        bottom: 12.0,
      ),
      child: SizedBox(
        height: 200.0,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            blogImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
