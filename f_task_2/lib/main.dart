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
          title: const Text(
            //! Text burda başladı.
            'Kabinet',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ), //! Text burda bitti.
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_active_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart_outlined),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    child: Text('R'),
                  ),
                  // ! Spacer vidgetlər arasında boşluq yaradır.
                  const Spacer(
                    // ! flex boşluğun genişliyini tənzimləyir.
                    flex: 1,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Profil',
                          style: TextStyle(fontWeight: FontWeight.w300)),
                      Text('Rehman',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const Spacer(
                    flex: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            // ! Divider ui elementleri aralarında xətt çəkir.
            Divider(
              color: Colors.grey.shade300,
              thickness: 8,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.arrow_circle_up_rounded,
                    size: 30,
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Umico ile qzanciniz'),
                      Text('715 Bonus'),
                    ],
                  ),
                  const Spacer(
                    flex: 8,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_forward_ios),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 8,
            ),
          ],
        ),
      ),
    ); // ! MaterialApp burda bitti.
  }
}
