import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Horizontal Direction"),
      ),
      body: SizedBox(
        width: 500,
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 50,
          itemBuilder: (context, index) => Card(
            color: Colors.amber,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.purple,
                  child: Center(
                    child: Text('Card $index'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
