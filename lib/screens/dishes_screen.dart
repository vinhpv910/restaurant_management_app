import 'package:flutter/material.dart';

import '../available_list/dishes_list.dart';
import '../models/my_table.dart';
import './dish_item.dart';

class DishesScreen extends StatefulWidget {
  static const routeName = 'dishes_screen';

  @override
  State<DishesScreen> createState() => _DishesScreenState();
}

class _DishesScreenState extends State<DishesScreen> {
  void increaseMainQuantity(String id, MyTable table1) {
    if (table1.mainDishesListOfTable[int.parse(id) - 1].id == id) {
      setState(() {
        table1.mainDishesListOfTable[int.parse(id) - 1].quantity++;
      });
    }
    totalBill(id, table1);
  }

  void increaseDessertQuantity(String id, MyTable table1) {
    if (table1.dessertDishesListOfTable[int.parse(id) - 1].id == id) {
      setState(() {
        table1.dessertDishesListOfTable[int.parse(id) - 1].quantity++;
      });
    }
  }

  void decreaseMainQuantity(String id, MyTable table1) {
    if (table1.mainDishesListOfTable[int.parse(id) - 1].id == id) {
      setState(() {
        table1.mainDishesListOfTable[int.parse(id) - 1].quantity--;
      });
    }
  }

  void decreaseDessertQuantity(String id, MyTable table1) {
    if (table1.dessertDishesListOfTable[int.parse(id) - 1].id == id) {
      setState(() {
        table1.dessertDishesListOfTable[int.parse(id) - 1].quantity--;
      });
    }
  }

  void totalBill(String id, MyTable table1) {
    for (int i = 0; i < table1.mainDishesListOfTable.length; i++) {
      if (table1.mainDishesListOfTable[i].quantity > 0) {
        table1.total += table1.mainDishesListOfTable[i].price *
            table1.mainDishesListOfTable[i].quantity;
      }
    }
    for (int i = 0; i < table1.dessertDishesListOfTable.length; i++) {
      if (table1.dessertDishesListOfTable[i].quantity > 0) {
        table1.total += table1.dessertDishesListOfTable[i].price *
            table1.dessertDishesListOfTable[i].quantity;
      }
    }
    for (int i = 0; i < table1.mainDishesListOfTable.length; i++) {
      print(table1.mainDishesListOfTable[i].quantity);
    }
    for (int i = 0; i < table1.dessertDishesListOfTable.length; i++) {
      print(table1.dessertDishesListOfTable[i].quantity);
    }
  }

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as MyTable;
    MyTable table = routeArgs;
    table.mainDishesListOfTable = mainDishesList;
    table.dessertDishesListOfTable = dessertDishesList;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(table.name),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text('Món mặn'),
              ),
              Tab(
                child: Text('Tráng Miệng'),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              itemCount: table.mainDishesListOfTable.length,
              itemBuilder: (context, index) => DishItem(
                table.mainDishesListOfTable[index],
                table,
                increaseMainQuantity,
                decreaseMainQuantity,
                totalBill,
              ),
            ),
            ListView.builder(
              itemCount: table.dessertDishesListOfTable.length,
              itemBuilder: (context, index) => DishItem(
                table.dessertDishesListOfTable[index],
                table,
                increaseDessertQuantity,
                decreaseDessertQuantity,
                totalBill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
