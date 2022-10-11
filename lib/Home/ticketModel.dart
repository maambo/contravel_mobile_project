class TicketModel {
  String location;

  TicketModel({required this.location});
  factory TicketModel.fromJson(Map<String, dynamic> json) {
    return TicketModel(location: json['location']);
  }
  Map<String, dynamic> toJsonAdd() {
    return {"loction": location};
  }
}
