import 'package:flutter/material.dart';

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 370,
      left: 24,
      right: 24,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 38,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const ScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                final list = [
                  'All Coffee',
                  'Espresso',
                  'Latte',
                  'Mocha',
                  'Cappuccino',
                  'Macchiato'
                ];
                return Container(
                  margin: const EdgeInsets.only(right: 8),
                  alignment: Alignment.center,
                  width: 121,
                  height: 38,
                  decoration: BoxDecoration(
                    color: const Color(0xffC67C4E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    list[index],
                    style: const TextStyle(
                      fontFamily: 'Sora',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
