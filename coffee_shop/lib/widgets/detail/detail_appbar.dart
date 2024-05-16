import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailAppbarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const DetailAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Text(
        'Detail',
        style: TextStyle(
          fontFamily: 'Sora',
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.only(left: 24.0),
        child: IconButton(
          icon: SvgPicture.asset('assets/svgs/arrowLeft.svg'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 24.0),
          child: IconButton(
            icon: SvgPicture.asset('assets/svgs/fav.svg'),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
