class Dish {
  final String id;
  final String name;
  final double price;
  int quantity;
  bool? state;
  final String image;

  Dish({
    required this.id,
    required this.name,
    required this.price,
    this.quantity = 0,
    this.state,
    required this.image,
  });
}
