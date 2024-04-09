import 'package:f_lesson_15/model/product_model.dart';

ProductModel default1 = ProductModel(
  id: 1,
  title: 'Product 1',
  price: 100,
  description: 'Description 1',
  images: ['https://via.placeholder.com/150'],
  creationAt: DateTime.now(),
  updatedAt: DateTime.now(),
  category: Category(
    id: 1,
    name: 'Category 1',
    image: 'https://via.placeholder.com/150',
    creationAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
);

ProductModel default2 = ProductModel(
  id: 2,
  title: 'Product 2',
  price: 200,
  description: 'Description 2',
  images: ['https://via.placeholder.com/150'],
  creationAt: DateTime.now(),
  updatedAt: DateTime.now(),
  category: Category(
    id: 2,
    name: 'Category 2',
    image: 'https://via.placeholder.com/150',
    creationAt: DateTime.now(),
    updatedAt: DateTime.now(),
  ),
);
