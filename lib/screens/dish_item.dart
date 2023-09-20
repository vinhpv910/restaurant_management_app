import 'package:flutter/material.dart';

class DishItem extends StatefulWidget {
  final String name;
  final double price;
  final String image;

  DishItem(this.name, this.price, this.image);

  @override
  State<DishItem> createState() => _DishItemState();
}

class _DishItemState extends State<DishItem> {
  final int quantity = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: Colors.grey,
          ),
        ),
      ),
      width: double.infinity,
      height: 110,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              widget.image,
              width: 48 * 3,
              height: 39 * 3,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  widget.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    widget.price.toStringAsFixed(0) + 'đ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('-'),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(quantity.toString())),
                  OutlinedButton(
                    onPressed: () {},
                    child: Text('+'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
