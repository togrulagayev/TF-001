import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

// ! Stateless vidget statik, dəyişməyən və sabit qalan vidgetlər üçün istifadə olunur.
// ! Ekrandakı dəyişiklikləri göstərmək üçün Stateful vidgetlərdən istifadə etmək lazımdır.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Demo App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  count--;
                  debugPrint(count.toString());
                });
              },
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              // ! vidgetin yeniləndiyini xəbərdar etmək üçün setState metodu istifade edilmelidir
              setState(() {
                count++;
                debugPrint(count.toString());
              });
            },
            child: const Icon(Icons.add),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Demo App Bar'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              count.toString(),
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const Text(
              'Düyməyə bu sayda klikləmisiz.',
            ),
          ],
        ),
      ),
    );
  }
}
