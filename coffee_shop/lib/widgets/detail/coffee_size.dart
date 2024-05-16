import 'package:flutter/material.dart';

class DetailCoffeeSizeWidget extends StatelessWidget {
  final String size;
  const DetailCoffeeSizeWidget({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 41,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(12),
        ),
        border: Border.all(
          color:
              size == 'M' ? const Color(0xffC67C4E) : const Color(0xffE3E3E3),
        ),
        color: size == 'M' ? const Color(0xffF9F2ED) : const Color(0xFFFFFFFF),
      ),
      child: Center(
        child: Text(
          size,
          style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Sora',
          ),
        ),
      ),
    );
  }
}
