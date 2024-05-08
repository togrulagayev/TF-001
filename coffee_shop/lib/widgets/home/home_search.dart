import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      left: 24,
      child: Row(
        children: [
          Card(
            color: const Color(0xFF2A2A2A),
            child: SizedBox(
              width: 259,
              height: 52,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search for coffee',
                  hintStyle: const TextStyle(
                    color: Color(0xffA2A2A2),
                    fontSize: 14,
                    fontFamily: 'Sora',
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/svgs/search.svg'),
                  ),
                  border: InputBorder.none,
                ),
                style: const TextStyle(
                  color: Color(0xffD8D8D8),
                  fontSize: 14,
                  fontFamily: 'Sora',
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          SizedBox(
            width: 52,
            height: 52,
            child: IconButton.filled(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color(0xffc67c4e),
                ),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              onPressed: () {},
              icon: SvgPicture.asset('assets/svgs/filter.svg'),
            ),
          ),
        ],
      ),
    );
  }
}
