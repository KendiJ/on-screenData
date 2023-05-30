import 'package:flutter/material.dart';

class ListTileItem {
  final String shoppingList;

  const ListTileItem({
    required this.shoppingList,
  });
}

class ListDataItems {
  final List<String> shoppingItems = [
    'Milks',
    'Bread',
    'Eggs',
    'Butter',
    'Cheese',
    'Yogurt',
    'Juice',
    'Water',
    'Soda',
    'Beer',
    'Wine',
    'Chips',
    'Cookies',
    'Candy',
    'Ice Cream',
  ];
  ListDataItems();
}

class VerticalList extends StatelessWidget {
  VerticalList({super.key});

  final ListDataItems item = ListDataItems();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vertical List')
      ),
      body: ListView.builder(
        itemCount: item.shoppingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(item.shoppingItems[index]),
          );
        },
      ),
    );
  }
}
