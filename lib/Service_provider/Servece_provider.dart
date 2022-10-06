import 'package:test_app/utils/app_info_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import 'num_sp.dart';

class ServiceProviders extends StatelessWidget {
  const ServiceProviders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(85),
        child: AppBar(
          brightness: Brightness.light,
          centerTitle: true,
          flexibleSpace: Container(
            // color: Colors.white,
            padding: EdgeInsets.only(
                left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
            child: Column(children: [
              Gap(AppLayout.getHeight(60)),
              Text(
                "Bus Service Providers",
                style: Styles.healdLineStyle2.copyWith(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: spList
                  .map((serviceProviderDetails) =>
                      ListOfSP(spList: serviceProviderDetails))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}
