import 'package:flutter/material.dart';

import '../available_list/dishes_list.dart';
import './dish_item.dart';

class DishesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final name = routeArgs['name'];

    return Scaffold(
      appBar: AppBar(
        title: Text(name!),
      ),
      body: Center(
        child: ListView(
          children: mainDishesList.map((index) {
            return DishItem(index.name, index.price, index.image);
          }).toList(),
        ),
      ),
    );
  }
}
