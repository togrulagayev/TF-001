import 'package:flutter/material.dart';

List<Color> myColors = [
  Colors.red, // ! index 0
  Colors.blue, // ! index 1
  Colors.green, // ! index 2
  Colors.yellow, // ! index 3
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.indigo,
  Colors.lime,
  Colors.amber,
  Colors.brown,
  Colors.grey,
  Colors.blueGrey
];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // ! DefaultTabController TabBar vidcetitini idarə edir.
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text('Material App Bar'),
              bottom: const TabBar(
                tabs: [
                  Icon(Icons.shopping_bag_outlined), //! 1-ci
                  Icon(Icons.favorite_border_sharp),
                ],
                physics: BouncingScrollPhysics(),
              ),
            ),
            body: const CustomTabBarView()),
      ),
    );
  }
}

class CustomTabBarView extends StatelessWidget {
  const CustomTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBarView(children: [
      ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Card(
                  child: Row(
                    children: [Text('Mehsul 1')],
                  ),
                ),
              )
            ],
          );
        },
      ), //! 1-ci
      ListView.builder(
        itemCount: myColors.length,
        itemBuilder: (BuildContext context, int index) {
          debugPrint(myColors.length.toString());
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 100,
                  color: myColors[index],
                ),
              )
            ],
          );
        },
      ), //! 2-ci
    ]);
  }
}
