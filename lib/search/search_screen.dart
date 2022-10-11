import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _date = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
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
            child: Column(children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Search for Your\nSpecific schedule....",
                style: Styles.healdLineStyle2.copyWith(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(20)),
        children: [
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:
                        Icon(Icons.location_on_outlined, color: Colors.black87),
                    hintText: "From",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15))),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:
                        Icon(Icons.location_on_sharp, color: Colors.black87),
                    hintText: "To",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15))),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: TextField(
              controller: _date,
              decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon:
                    Icon(Icons.calendar_today_rounded, color: Colors.black87),
                hintText: "Pick a date",
                hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              /* onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2022),
                      lastDate: DateTime(2050));
                  if (pickeddate != null) {
                    setState(() {
                      _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                    });
                  }
                }*/
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          Container(
            padding: EdgeInsets.all(AppLayout.getHeight(5)),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: const TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon:
                        Icon(Icons.directions_bus, color: Colors.black87),
                    hintText: "All",
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 15))),
          ),
          Gap(AppLayout.getHeight(20)),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              child: const Text(
                "Find Ticket",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              onPressed: () {},
            ),
          ),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent updates",
                style: Styles.healdLineStyle3,
              ),
              InkWell(
                  onTap: () {
                    print("you are tapped");
                  },
                  child: Text(
                    "View all",
                    style: Styles.healdLineStyle4
                        .copyWith(color: Styles.primaryColor),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
