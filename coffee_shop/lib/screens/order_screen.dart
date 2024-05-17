import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/order/delivery/delivery_tab.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Order',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Sora',
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset('assets/svgs/arrowLeft.svg'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(67),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
              ),
              child: Container(
                height: 43,
                decoration: const BoxDecoration(
                  color: Color(0xFFEDEDED),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: const TabBar(
                  dividerHeight: 0,
                  labelColor: Color(0xFFFFFFFF),
                  indicator: BoxDecoration(
                    color: Color(0xFFC67C4E),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  indicatorPadding: EdgeInsets.all(4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: [
                    Tab(
                      child: Text(
                        'Deliver',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Sora',
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Pick Up',
                        style: TextStyle(
                          fontSize: 16,
                          letterSpacing: 2,
                          fontFamily: 'Sora',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            DeliveryTab(),
            PickUpTab(),
          ],
        ),
      ),
    );
  }
}

class PickUpTab extends StatelessWidget {
  const PickUpTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text('Pick Up');
  }
}
