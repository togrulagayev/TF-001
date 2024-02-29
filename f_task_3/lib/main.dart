import 'package:flutter/material.dart';

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
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Card(
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
              Card(
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
                            const Text(
                              'Ailə tərkibi',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Ədliyyə Nazirliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'Cərimələrim',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Vətəndaşlara Xidmət Və sosial İnnovasiyalar üzrə Dövlət Xidməti",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'COVID-19 Əks-göstəriş sertifikatı',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "İcbari Tibbi Sığorta üzrə Dövlət Agentliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'COVID-19 İmmunitet sertifikatı',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "İcbari Tibbi Sığorta üzrə Dövlət Agentliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'COVID-19 Peyvənd sertifikatı',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "İcbari Tibbi Sığorta üzrə Dövlət Agentliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'Daşınmaz Əmlak məlumatları',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Əmlak məsələləri Dövlət Xidməti",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'Digər xidmət ödənişlərəri',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Vətəndaşlara Xidmət Və sosial İnnovasiyalar üzrə Dövlət Xidməti",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'Diplomlar',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Elm və Təhsil Nazirliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Card(
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
                            const Text(
                              'Doğum haqqında şəhadətnamə',
                              style: TextStyle(
                                color: Color.fromARGB(255, 3, 52, 124),
                              ),
                            ),
                            Text(
                              "Ədliyyə Nazirliyi",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Colors.grey.shade500),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
