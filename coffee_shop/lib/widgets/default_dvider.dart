import 'package:flutter/material.dart';

class DefaultDviderWidget extends StatelessWidget {
  const DefaultDviderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 295,
        child: Divider(
          thickness: 1,
          color: Color(0xffE3E3E3),
        ),
      ),
    );
  }
}
