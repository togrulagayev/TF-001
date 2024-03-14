import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'grid_builder.dart';
import 'grid_count.dart';
import 'simple_grid_view.dart';

//! Bu sehife qaranliqdir?
class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                // ! MaterialPageRoute android  terzi kecid
                MaterialPageRoute(
                  builder: (context) {
                    return const GridViewCountExample();
                  },
                ),
              );
            },
            child: const Text('Button 1'),
          ),
          OutlinedButton(
            onPressed: () => Navigator.push(
              context,
              // ! CupertinoPageRoute ios terzi kecid
              CupertinoPageRoute(
                builder: (context) {
                  return const GridViewBuilderExample();
                },
              ),
            ),
            child: const Text('Button 2'),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              CupertinoPageRoute(
                builder: (context) => const SimpleGridViewExample(),
              ),
            ),
            icon: const Icon(Icons.accessibility_outlined),
          ),
        ],
      ),
    );
  }
}
