class Schedule {
  String id;
  String serviceProvider;
  String fromCity;
  String toCity;
  String price;
  String date;
  String time;
  String image;
  int eta;

  Schedule(
      {required this.id,
      required this.serviceProvider,
      required this.fromCity,
      required this.toCity,
      required this.price,
      required this.date,
      required this.time,
      required this.image,
      required this.eta});
}
