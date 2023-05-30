import 'package:flutter/material.dart';
import 'package:views_app/consts/strings/app_strings.dart';

class CarItem {
  final String title;
  final String subtitle;
  final String url;

  const CarItem({
    required this.title,
    required this.subtitle,
    required this.url,
  });
}

class ListDataItems {
  final List<CarItem> carItems = const [
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
    CarItem(
      title: 'Ford Raptor f150',
      subtitle: 'Baddie',
      url: 'https://www.ford.com/trucks/f150/models/f150-raptor/',
    ),
  ];
  ListDataItems();
}

class SliverHeader extends StatelessWidget {
    const SliverHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.teal,
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            leading: Icon(Icons.menu),
            title: Text(AppStrings.responsive),
            expandedHeight: 100,
            collapsedHeight: 150,
            floating: false,
          ),
          MySliverList(),
        ],
      ),
    );
  }
}

class MySliverList extends StatelessWidget {
  MySliverList({ Key? key }) : super(key: key);

  final ListDataItems item = ListDataItems();

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(item.carItems[index].url),
          ),
          title: Text(item.carItems[index].title),
          subtitle: Text(item.carItems[index].subtitle),
          trailing: const Icon(Icons.arrow_forward_ios),
        ),
        childCount: item.carItems.length,
      ),
    );
  }
}
