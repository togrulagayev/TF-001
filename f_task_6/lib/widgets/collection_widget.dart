import 'package:flutter/material.dart';

class CollectionWidget extends StatelessWidget {
  const CollectionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 460,
      margin: const EdgeInsets.all(0),
      child: Stack(
        children: [
          Image.network(
            'https://cdn.apartmenttherapy.info/image/upload/f_auto,q_auto:eco,c_fill,g_auto,w_1500,ar_3:2/at%2FClothes%20Piled%20on%20a%20Chair%20shutterstock_1306753567',
            height: 460,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'COLLECTION',
              style: TextStyle(fontSize: 30.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: SizedBox(
                width: 161,
                child: Text(
                  'Discount for summer',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
