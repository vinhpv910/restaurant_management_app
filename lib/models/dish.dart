class Dish {
  final String id;
  final String name;
  final double price;
  bool? state;
  final String image;

  Dish({
    required this.id,
    required this.name,
    required this.price,
    this.state,
    required this.image,
  });
}
