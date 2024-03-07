import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final _controller = PageController(
      // ! ilkin səhifəni göstərmək üçün
      initialPage: 1);
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: FloatingActionButton(
                  onPressed: () {
                    // ! Oncəki səhifəyə keçid
                    _controller.previousPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.bounceInOut);
                  },
                  child: const Icon(Icons.arrow_back_outlined),
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  // ! Növbəti səhifəyə keçid
                  _controller.nextPage(
                      duration: const Duration(milliseconds: 300),
                      curve: Easing.emphasizedDecelerate);
                },
                child: const Icon(Icons.arrow_forward_outlined),
              ),
            ],
          ),
          appBar: AppBar(
            title: const Text('PageView Example'),
            backgroundColor: Colors.indigo.shade400,
          ),
          body: PageView(
            // ! phsics: - səhifələr arasında sürüşməni idarə edir
            physics: const NeverScrollableScrollPhysics(),
            controller: _controller,
            children: [
              // ! index 0
              Container(
                color: Colors.red,
                child: const Center(
                  child: Text('Page 1',
                      style: TextStyle(fontSize: 32, color: Colors.white)),
                ),
              ), // ! index 1
              Container(
                color: Colors.blue,
                child: const Center(
                  child: Text('Page 2',
                      style: TextStyle(fontSize: 32, color: Colors.white)),
                ),
              ), // ! index 2
              Container(
                color: Colors.green,
                child: const Center(
                  child: Text('Page 3',
                      style: TextStyle(fontSize: 32, color: Colors.white)),
                ),
              ),
            ],
          )),
    );
  }
}
