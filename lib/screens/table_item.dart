import 'package:flutter/material.dart';
import '../screens/dishes_screen.dart';

class TableItem extends StatefulWidget {
  String name;
  bool state;

  TableItem(this.name, this.state);

  @override
  State<TableItem> createState() => _TableItemState();
}

class _TableItemState extends State<TableItem> {
  void goDishesScreen(BuildContext ctx) {
    Navigator.of(context).pushNamed(
      'dishes_screen',
      arguments: {
        'name': widget.name,
      },
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
                  widget.name,
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
                  backgroundColor: widget.state ? Colors.green : Colors.red,
                ),
              ),
            ],
          )),
    );
  }
}
