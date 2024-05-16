import 'package:flutter/material.dart';

import '../widgets/detail/coffee_size.dart';
import '../widgets/detail/description.dart';
import '../widgets/detail/detail_appbar.dart';
import '../widgets/detail/detail_image.dart';
import '../widgets/detail/product_detail.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEDEDED),
      appBar: const DetailAppbarWidget(),
      body: const Padding(
        padding: EdgeInsets.only(left: 24, right: 24, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DetailImageWidget(),
            SizedBox(height: 16),
            DetailProductWidget(),
            SizedBox(height: 16),
            SizedBox(
              width: 295,
              child: Divider(
                thickness: 1,
                color: Color(0xffE3E3E3),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Description',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            DetailDescriptionWidget(),
            SizedBox(height: 24),
            Text(
              'Size',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DetailCoffeeSizeWidget(
                  size: 'S',
                ),
                DetailCoffeeSizeWidget(
                  size: 'M',
                ),
                DetailCoffeeSizeWidget(
                  size: 'L',
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 118,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(24),
            topRight: Radius.circular(24),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 24,
            right: 24,
            top: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: TextStyle(
                      color: Color(0xff909090),
                      fontFamily: 'Sora',
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    '\$ 4.53',
                    style: TextStyle(
                      color: Color(0xffC67C4E),
                      fontFamily: 'Sora',
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 217,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      const Color(0xffC67C4E),
                    ),
                    padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text('Buy Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
