import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailProductWidget extends StatelessWidget {
  const DetailProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Caffe Mocha',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 4),
            Text(
              'Ice/Hot',
              style: TextStyle(
                fontSize: 12,
                color: Color(0xffA2A2A2),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Color(0xffFBBE21),
                ),
                Text.rich(
                  TextSpan(
                    text: '4.8',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Sora',
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        text: ' (230)',
                        style: TextStyle(
                          color: Color(0xffA2A2A2),
                          fontSize: 12,
                          fontFamily: 'Sora',
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svgs/bike.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/svgs/coffee.svg'),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/svgs/package.svg',
          ),
        ),
      ],
    );
  }
}
