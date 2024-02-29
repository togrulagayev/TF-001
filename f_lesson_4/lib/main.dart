import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Material App Bar'),
            centerTitle: true,
          ),
          body: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(width: 100, height: 100, color: Colors.red),
                      Container(width: 100, height: 100, color: Colors.green),
                      Container(width: 100, height: 100, color: Colors.blue),
                      Container(width: 100, height: 100, color: Colors.yellow),
                      Container(width: 100, height: 100, color: Colors.pink),
                      Container(width: 100, height: 100, color: Colors.purple),
                      Container(width: 100, height: 100, color: Colors.orange),
                      Container(width: 100, height: 100, color: Colors.teal),
                      Container(width: 100, height: 100, color: Colors.brown),
                    ],
                  ),
                  Row(
                    children: [
                      Container(width: 100, height: 100, color: Colors.brown),
                      Container(width: 100, height: 100, color: Colors.teal),
                      Container(width: 100, height: 100, color: Colors.orange),
                      Container(width: 100, height: 100, color: Colors.purple),
                      Container(width: 100, height: 100, color: Colors.yellow),
                      Container(width: 100, height: 100, color: Colors.blue),
                      Container(width: 100, height: 100, color: Colors.pink),
                      Container(width: 100, height: 100, color: Colors.green),
                      Container(width: 100, height: 100, color: Colors.red),
                    ],
                  ),
                ],
              )
            ],
          )),
    );
  }
}



// ! SingleChildScrollView vidgeti Uİdakı elementləri sürüşdürülə bilən hala salır
        // body: SingleChildScrollView(
        //   //! physics parametri ilə sürüşdürmənin hərəkət tərzini təyin edə bilərik
        //   physics: const BouncingScrollPhysics(),
        //   child: Column(
        //     children: [
        //       Container(height: 100, color: Colors.red),
        //       Container(height: 100, color: Colors.green),
        //       Container(height: 100, color: Colors.blue),
        //       Container(height: 100, color: Colors.yellow),
        //       Container(height: 100, color: Colors.pink),
        //       Container(height: 100, color: Colors.purple),
        //       Container(height: 100, color: Colors.orange),
        //       Container(height: 100, color: Colors.teal),
        //       Container(height: 100, color: Colors.brown),
        //     ],
        //   ),
        // ),