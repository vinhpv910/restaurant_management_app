import 'package:flutter/material.dart';

import '../models/dish.dart';
import '../models/my_table.dart';

class DishItem extends StatelessWidget {
  Dish dish;
  MyTable table;
  Function increaseQuantity;
  Function decreaseQuantity;
  Function totalBill;

  DishItem(
    this.dish,
    this.table,
    this.increaseQuantity,
    this.decreaseQuantity,
    this.totalBill,
  );

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
              dish.image,
              width: 48 * 3,
              height: 39 * 3,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  dish.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    dish.price.toStringAsFixed(0) + 'đ',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  OutlinedButton(
                    onPressed: () => decreaseQuantity(
                      dish.id,
                      table,
                    ),
                    child: Text('-'),
                  ),
                  Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(dish.quantity.toString())),
                  OutlinedButton(
                    onPressed: () => increaseQuantity(
                      dish.id,
                      table,
                    ),
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
