// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

List titles = [
  'Ailə tərkibi',
  'Cərimələrim',
  'COVID-19 Əks-göstəriş sertifikatı',
  'COVID-19 İmmunitet sertifikatı',
  'COVID-19 Peyvənd sertifikatı',
  'Daşınmaz Əmlak məlumatları',
  'Digər xidmət ödənişlərəri',
  'Diplomlar',
  'Doğum haqqında şəhadətnamə',
];

List subtitles = [
  'Ədliyyə Nazirliyi',
  'Vətəndaşlara Xidmət Və sosial İnnovasiyalar üzrə Dövlət Xidməti',
  'İcbari Tibbi Sığorta üzrə Dövlət Agentliyi',
  'İcbari Tibbi Sığorta üzrə Dövlət Agentliyi',
  'İcbari Tibbi Sığorta üzrə Dövlət Agentliyi',
  'Əmlak məsələləri Dövlət Xidməti',
  'Vətəndaşlara Xidmət Və sosial İnnovasiyalar üzrə Dövlət Xidməti',
  'Elm və Təhsil Nazirliyi',
  'Ədliyyə Nazirliyi',
];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey.shade100,
          // ! Card vidgeti müəyyən çərçivəsi olan container vidcetinə bənzəyən Uİ elementdir.
          title: Card(
            color: Colors.white,
            surfaceTintColor: Colors.white,
            child: Row(
              children: [
                IconButton(
                  color: const Color.fromARGB(255, 3, 52, 124),
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const Text('Axtar'),
              ],
            ),
          ),
          bottom: AppBar(
            backgroundColor: Colors.blueGrey.shade100,
            title: const Card(
              color: Colors.white,
              surfaceTintColor: Colors.white,
              margin: EdgeInsets.only(top: 16, left: 8, right: 8, bottom: 8),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Xidmətlər',
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 52, 124),
                      ),
                    ),
                    // VerticalDivider(
                    //   thickness: 2,
                    //   color: Colors.black,
                    // ),
                    Text(
                      "Qurumlar üzrə",
                      style: TextStyle(
                        color: Color.fromARGB(255, 3, 52, 124),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: titles.length,
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

class CustomCardWidget extends StatelessWidget {
  String title;
  String subtitle;
  CustomCardWidget({
    required this.title,
    required this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 3, 52, 124),
                    ),
                  ),
                  Text(
                    subtitle,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
