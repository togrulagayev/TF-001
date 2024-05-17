import 'package:coffee_shop/widgets/default_dvider.dart';
import 'package:flutter/material.dart';

import 'adress.dart';
import 'count.dart';

class DeliveryTab extends StatelessWidget {
  const DeliveryTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        left: 24,
        top: 24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DeliveryAddressWidget(),
          DefaultDviderWidget(),
          SizedBox(height: 16),
          OrderCountWidget(),
          SizedBox(height: 16),
          Divider(
            color: Color(0xFFF9F2ED),
            thickness: 4,
          ),
        ],
      ),
    );
  }
}
