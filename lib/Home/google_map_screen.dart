import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class googleMapScreen extends StatelessWidget {
  final Map<String, dynamic> google;

  const googleMapScreen({Key? key, required this.google}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: 350,
      margin: const EdgeInsets.only(right: 17, top: 5),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(color: Colors.grey.shade200, blurRadius: 2, spreadRadius: 1)
        ],
      ),
      child: Column(children: [
        Container(
            height: 180,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Styles.primaryColor,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/${google['image']}")))),
        SizedBox(height: 10),
        Text(
          google['province'],
          style: Styles.healdLineStyle3.copyWith(color: Styles.kakiColor),
        ),
        SizedBox(height: 5),
        Text(
          google['place'],
          style: Styles.healdLineStyle3.copyWith(color: Colors.white),
        ),
        SizedBox(height: 5),
        Text(
          google['destination'],
          style: Styles.healdLineStyle1.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
