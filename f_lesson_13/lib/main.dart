import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/product_model.dart';

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
    products = [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            products = await getProducts();
            setState(() {});
          },
          child: const Icon(Icons.cyclone),
        ),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(products[index].title!),
              subtitle: Text(products[index].description!),
              trailing: Text(products[index].price.toString()),
            );
          },
        ),
      ),
    );
  }
}

Future<List<ProductModel>> getProducts() async {
  var link = 'https://api.escuelajs.co/api/v1/products';

  try {
    var response = await Dio().get(link);

    if (response.statusCode == 200) {
      var data = response.data as List;
      return data.map((product) => ProductModel.fromJson(product)).toList();
    }
  } catch (e) {
    debugPrint('Error');
  }

  return [];
}
