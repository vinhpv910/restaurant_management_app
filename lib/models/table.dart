class Table {
  final String id;
  final String name;
  bool state;
  double total;
  DateTime? arrivalTime;
  DateTime? finishedTime;

  Table(
      {required this.id,
      required this.name,
      required this.state,
      required this.total,
      this.arrivalTime,
      this.finishedTime});
}
