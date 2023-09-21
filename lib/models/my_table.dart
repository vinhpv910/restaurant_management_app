import './dish.dart';

class MyTable {
  final String id;
  final String name;
  bool state;
  double total;
  List<Dish> mainDishesListOfTable;
  List<Dish> dessertDishesListOfTable;
  DateTime? arrivalTime;
  DateTime? finishedTime;

  MyTable({
    required this.id,
    required this.name,
    required this.state,
    this.total = 0,
    this.mainDishesListOfTable = const [],
    this.dessertDishesListOfTable = const [],
    this.arrivalTime,
    this.finishedTime,
  });
}
