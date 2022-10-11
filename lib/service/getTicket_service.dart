import 'dart:convert';

import '../Home/ticketModel.dart';
import 'package:http/http.dart' as http;

class GetTicketService {
  List<TicketModel> ticketFromJson(String jsonString) {
    final data = json.decode(jsonString);
    return List<TicketModel>.from(
        data.map((item) => TicketModel.fromJson(item)));
  }

  Future<List<TicketModel>> viewTickets() async {
    final response = await http.post(
      Uri.parse(
          'http://192.168.43.3/Zamtravel/serviceProvider/flutter/view_ticketByLocation.php'),
    );
    if (response.statusCode == 200) {
      List<TicketModel> list = ticketFromJson(response.body);
      return list;
    } else {
      return List<TicketModel>.empty();
    }
  }
}
