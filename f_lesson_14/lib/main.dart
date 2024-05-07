import 'package:dio/dio.dart';
import 'package:f_lesson_14/model/api_model.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ! late - deyisenin tipi ve ya deyeri sonra teyin olunacaq
  late List<UserModel> users;
  @override
  void initState() {
    super.initState();
    users = [];
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            users = await getUsers();
            setState(() {});
          },
          child: const Icon(Icons.repeat_outlined),
        ),
        body: ListView.builder(
          itemCount: users.length,
          itemBuilder: (BuildContext context, int index) {
            if (users.isEmpty || users.isEmpty) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return ListTile(
                title: Text(users[index].userName),
                subtitle: Text(users[index].email),
                leading: CircleAvatar(
                  backgroundColor: Colors.deepPurple,
                  child: Text(users[index].id.toString()),
                ),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text(users[index].address.number.toString()),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

// ! Bu funksiya API`den melumatlarin cekilmesi ucun istifade olunacaq
Future<List<UserModel>> getUsers() async {
  String url = 'https://fakestoreapi.com/users';

  try {
    // ! Dio paketi vasitesi ile API`den melumatlarin cekilmesi
    var response = await Dio().get(url);

// ! Eger status code 200 ise melumatlar cekilir
    if (response.statusCode == 200) {
      // ! Cekilen melumatlarin list olaraq qaytarilmasi
      var data = response.data as List;
      // ! Cekilen melumatlarin parse edilmesi
      return data.map((e) => UserModel.fromJson(e)).toList();
    }
  } on DioException catch (e) {
    debugPrint(e.message);
  }

  return [];
}
