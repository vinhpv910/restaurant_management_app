import 'package:flutter/material.dart';

import '../screens/dishes_screen.dart';
import '../models/my_table.dart';

class TableItem extends StatefulWidget {
  MyTable table;

  TableItem(this.table);

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  void goDishesScreen(BuildContext ctx) {
    Navigator.of(context).pushNamed(
      DishesScreen.routeName,
      arguments: widget.table,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => goDishesScreen(context),
      splashColor: Colors.grey,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text(
                  widget.table.name,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor:
                      widget.table.state ? Colors.green : Colors.red,
                ),
              ),
            ],
          )),
    );
  }
}
