import 'package:flutter/material.dart';

import '../available_list/table_list.dart';
import './table_item.dart';

class TablesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tables Management'),
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        children: tableList.map((index) {
          return TableItem(index.name, index.state);
        }).toList(),
      ),
    );
  }
}
