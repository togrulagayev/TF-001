import 'package:f_task_5/constants/constants.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_carousel_widget.dart';
import '../widgets/custom_categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'tap.az',
          style: TextStyle(
              color: orangeColor, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 35,
            color: orangeColor,
          ),
          onPressed: () {},
        ),
        bottom: AppBar(
          title: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    constraints: BoxConstraints(maxHeight: 55),
                    hintText: 'Əşya və ya xidmət axtar',
                    prefixIcon: Icon(Icons.search),
                    prefixIconColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Card(
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.filter_list,
                      color: Colors.blue,
                      size: 30,
                    ),
                    style: const ButtonStyle(
                      shape: MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomCarouselWidget(),
            const CustomCategoriesWidget(),
            SizedBox(
              height: 400,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: imgList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Column(
                      children: [
                        Image.network(
                          imgList[index],
                          fit: BoxFit.cover,
                          height: 150,
                          width: double.infinity,
                        ),
                        const Text('Title'),
                        const Text('Price'),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
