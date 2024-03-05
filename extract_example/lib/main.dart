import 'package:flutter/material.dart';

List titles = [
  'Title1',
  'Title2',
  'Title3',
  'Title4',
  'Title5',
  'Title6',
  'Title7',
  'Title8',
  'Title9',
];

List subtitles = [
  'Subtitle1',
  'Subtitle2',
  'Subtitle3',
  'Subtitle4',
  'Subtitle5',
  'Subtitle6',
  'Subtitle7',
  'Subtitle8',
  'Subtitle9',
];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return CustomCardWidget(
              title: titles[index],
              subtitle: subtitles[index],
            );
          },
        ),
      ),
    );
  }
}

// ! Card Widget`ini əsəs hissədən kənara çıxardım.

class CustomCardWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  const CustomCardWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subtitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
