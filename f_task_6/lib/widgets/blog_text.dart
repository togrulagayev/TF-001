import 'package:flutter/material.dart';

class BlogTextWidget extends StatelessWidget {
  final String text;
  const BlogTextWidget(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 20.0,
        bottom: 20.0,
      ),
      child: Text(
        text,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
