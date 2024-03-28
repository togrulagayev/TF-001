import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Stack Widget Example'),
        ),
        body: Stack(
          children: [
            // ! Align widget vidgetlerin movqeyini teyin edir
            const CircleAvatar(
              foregroundImage: NetworkImage(
                  'https://icones.pro/wp-content/uploads/2021/03/avatar-de-personne-icone-homme.png'),
              radius: 100,
            ),
            Align(
              alignment: const Alignment(-0.15, -0.6),
              child: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/svgs/add_circle.svg',
                  // width: 50,
                  height: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
