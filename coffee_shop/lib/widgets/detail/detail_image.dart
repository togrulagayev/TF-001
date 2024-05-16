import 'package:flutter/material.dart';

import '../../constants/lists.dart';

class DetailImageWidget extends StatelessWidget {
  const DetailImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Image.network(coffeesLinks[0]),
    );
  }
}
