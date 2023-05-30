import 'package:flutter/material.dart';
import 'package:views_app/consts/strings/app_strings.dart';

class GridViews extends StatelessWidget {
  const GridViews({super.key});

  final gridItems = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.grid),
      ),
      body: GridView.builder(
        itemCount: gridItems,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (constex, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 100,
              width: 50,
              color: Colors.blueAccent,
              child: Center(
                child: Text(index.toString()),
              ),
            ),
          );
        },
      ),
    );
  }
}
