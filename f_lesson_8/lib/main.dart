import 'package:flutter/material.dart';

import 'screen/grid_count.dart';

var imageList = [
  'https://mir-s3-cdn-cf.behance.net/project_modules/hd/602f4731226337.5646928c3633f.jpg',
  'https://blog.spoongraphics.co.uk/wp-content/uploads/2017/album-art/22.jpg',
  'https://abduzeedo.com/sites/default/files/styles/square_1x1/public/originals/0ec5c569226647.5b79b483096c1.jpg?itok=e3ASF2Y-',
  'https://coverartworks.com/wp-content/uploads/2020/10/dexterity-jpg.webp',
  'https://coverartworks.com/wp-content/uploads/2023/07/scorching-jpg-webp.webp',
  'https://coverartworks.com/wp-content/uploads/2023/09/Celestial-Arrival-750-jpg-webp.webp',
  'https://coverartworks.com/wp-content/uploads/2023/10/ufonut-pick-750-jpg.webp',
  'https://as2.ftcdn.net/v2/jpg/02/82/39/37/1000_F_282393722_fo3iAe4Wpqt5H6HQHOTYetnrkGBgnqII.jpg',
];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Grid View Example'),
          centerTitle: true,
        ),
        // body: const SimpleGridViewExample(), //! Sade Grid View
        // body: const GridViewBuilderExample(), //! Builder ile Grid View
        body: const GridViewCountExample(), //! Count ile Grid View
      ),
    );
  }
}
