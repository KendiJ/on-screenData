import 'package:flutter/material.dart';
import 'package:views_app/consts/strings/app_strings.dart';
import 'package:views_app/screens/on-screens/grid_view.dart';
import 'package:views_app/screens/on-screens/horizontal_list.dart';
import 'package:views_app/screens/on-screens/notifications.dart';
import 'package:views_app/screens/on-screens/sliver_header.dart';

import 'on-screens/vertical_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('On screen Data'),
        backgroundColor: const Color.fromARGB(255, 240, 208, 246),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 10, 30),
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => VerticalList()),
                  );
                },
                child: const Text(AppStrings.vertical),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HorizontalList()),
                  );
                },
                child: const Text(AppStrings.horizontal),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const SliverHeader()),
                  );
                },
                child: const Text(AppStrings.responsive),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  const GridViews ()),
                  );
                },
                child: const Text(AppStrings.grid),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>   Notifications ()),
                  );
                },
                child: const Text(AppStrings.notifications),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
