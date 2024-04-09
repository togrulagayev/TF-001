import 'package:dio/dio.dart';
import 'package:f_lesson_15/constants.dart';
import 'package:f_lesson_15/model/product_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late List<ProductModel> products;
  @override
  void initState() {
    super.initState();
    products = [default1, default2];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            products = await getProducts();
            setState(() {});
          },
          child: const Icon(Icons.refresh),
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Fake E-comnerce App'),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  // color: Colors.red,
                  child: Column(
                children: [
                  Expanded(
                      child: Image.network(products[index].category.image)),
                  Text(products[index].title),
                  Text(products[index].price.toString()),
                ],
              )),
            );
          },
        ),
      ),
    );
  }
}

Future<List<ProductModel>> getProducts() async {
  var url = 'https://api.escuelajs.co/api/v1/products';

  try {
    var response = await Dio().get(url);
    if (response.statusCode == 200) {
      var data = response.data as List;
      var allData = data.map((e) => ProductModel.fromJson(e)).toList();
      return allData;
    }
  } on DioException catch (e) {
    debugPrint(e.message);
  }

  return [];
}
