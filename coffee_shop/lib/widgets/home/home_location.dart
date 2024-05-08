import 'package:flutter/material.dart';

class HomeLocationWidget extends StatelessWidget {
  const HomeLocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned(
      top: 65,
      left: 24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Location',
            style: TextStyle(
              color: Color(0xffA2A2A2),
              fontSize: 12,
              fontFamily: 'Sora',
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Text(
                'New York, Times Square',
                style: TextStyle(
                  color: Color(0xffD8D8D8),
                  fontSize: 14,
                  fontFamily: 'Sora',
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.keyboard_arrow_down,
                size: 14,
                color: Color(0xffD8D8D8),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
