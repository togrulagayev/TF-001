import 'package:flutter/material.dart';

import '../../../constants/lists.dart';

class OrderCountWidget extends StatelessWidget {
  const OrderCountWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            coffeesLinks[0],
            width: 54,
            height: 54,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 16),
        const Column(
          children: [
            Text(
              'Caffe Mocha',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Sora',
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Deep Foam',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Sora',
                color: Color(0xFFA2A2A2),
              ),
            ),
          ],
        ),
        const SizedBox(width: 64),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            size: 16,
          ),
        ),
        const Text(
          '1',
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Sora',
            fontWeight: FontWeight.w600,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.remove,
            size: 16,
          ),
        ),
      ],
    );
  }
}
