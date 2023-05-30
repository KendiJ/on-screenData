import 'package:flutter/material.dart';
import 'package:views_app/consts/strings/app_strings.dart';

class ListViewData {
  final List<String> softDrinks = [
    'Soda',
    'Fanta Orange',
    'Coca-Cola',
    'Sprite',
    'Delmonte'
  ];
}

class Notifications extends StatelessWidget {
  Notifications({super.key});

  final ListViewData items = ListViewData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.notifications),
      ),
      body: ListView.builder(
        itemCount: items.softDrinks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items.softDrinks[index]),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You selected ${items.softDrinks[index]}'),
                  duration: const Duration(seconds: 4),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
