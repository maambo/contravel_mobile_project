import 'package:flutter/material.dart';
import '../service/schedule.dart';
import 'dart:convert';
import '../screens/ticket_view.dart';
import '../utils/app_info_list.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import 'google_map_screen.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Schedule> tickets = [];
  bool _isLoading = true;
  TextEditingController locationSearch = TextEditingController();
  @override
  void dispose() {
    locationSearch.dispose();
    super.dispose();
  }

  Future<void> fetchTickets() async {
    setState(() {
      _isLoading = true;
    });
    String url =
        'http://contravel.000webhostapp.com/flutter/view_ticketByLocation.php';
    var postdata = {
      "location": locationSearch.text,
    };
    var response = await http.post(Uri.parse(url),
        headers: {
          'Accept': 'application/json',
        },
        body: postdata);
    var data = json.decode(response.body);
    List<Schedule> loadedTickets = [];
    data['data'].forEach((ticket) {
      loadedTickets.add(
        Schedule(
            id: ticket['id'],
            serviceProvider: ticket['ServiceProvider'],
            fromCity: ticket['from_City'],
            toCity: ticket['to_City'],
            price: ticket['price'],
            date: ticket['date'],
            time: ticket['time'],
            image: ticket['image'],
            eta: ticket['eta']),
      );
    });
    setState(() {
      tickets = loadedTickets;
      _isLoading = false;
    });
  }

  @override
  void initState() {
    Future.delayed(Duration.zero).then((_) async {
      await fetchTickets();
    });
    locationSearch.addListener(() {
      Future.delayed(Duration.zero).then((_) async {
        await fetchTickets();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppLayout.getHeight(85)),
        child: AppBar(
          brightness: Brightness.light,
          centerTitle: true,
          flexibleSpace: Container(
              // color: Colors.white,
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
              child: Column(
                children: [
                  SizedBox(height: AppLayout.getHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.healdLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(height: AppLayout.getHeight(5)),
                          Text("Book Tickets",
                              style: Styles.healdLineStyle1
                                  .copyWith(color: Colors.amberAccent)),
                        ],
                      ),
                      Container(
                        height: AppLayout.getHeight(50),
                        width: AppLayout.getWidth(50),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(10)),
                            image: const DecorationImage(
                                fit: BoxFit.fitHeight,
                                image: AssetImage("assets/images/imglog.png"))),
                      )
                    ],
                  ),
                ],
              )),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
            child: Column(
              children: [
                SizedBox(height: AppLayout.getHeight(25)),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: TextField(
                      controller: locationSearch,
                      decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search, color: Colors.black87),
                          hintText: "Search for a Location",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 15))),
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Upcoming Bus Schedules",
                      style: Styles.healdLineStyle3,
                    ),
                    InkWell(
                        onTap: () {},
                        child: Text(
                          "View all",
                          style: Styles.healdLineStyle4
                              .copyWith(color: Styles.primaryColor),
                        ))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          _isLoading
              ? Container(
                  height: 50,
                  width: 50,
                  alignment: Alignment.center,
                  child: const CircularProgressIndicator(),
                )
              : SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: tickets
                        .map((singleTicket) => TicketView(
                              ticket: singleTicket,
                            ))
                        .toList(),
                  )),
          const SizedBox(height: 15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Locations",
                  style: Styles.healdLineStyle3,
                ),
                InkWell(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style: Styles.healdLineStyle4
                          .copyWith(color: Styles.primaryColor),
                    ))
              ],
            ),
          ),
          const SizedBox(height: 15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: googleList
                  .map((singleGoogle) => googleMapScreen(google: singleGoogle))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
