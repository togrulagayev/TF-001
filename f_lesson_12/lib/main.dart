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
            title: const Text(
              'Stack Widget Example',
              style: TextStyle(
                fontFamily: 'Josefin Sans',
              ),
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              Expanded(
                child: Stack(
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
              Image.asset('assets/images/one.webp'),
              Image.asset('assets/images/two.webp'),
              Image.asset('assets/images/three.jpg'),
              Image.asset('assets/images/four.webp'),
              Image.asset('assets/images/five.webp'),
            ],
          )),
    );
  }
}
