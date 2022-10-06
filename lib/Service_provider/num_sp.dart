import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';

class ListOfSP extends StatelessWidget {
  const ListOfSP({Key? key, required this.spList}) : super(key: key);
  final Map<String, dynamic> spList;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(children: [
        Container(
          height: 60,
          width: 60,
          color: Theme.of(context).colorScheme.secondary,
        ),
        Positioned(
          right: 0,
          bottom: 0,
          child: Container(
            height: 60,
            width: 60,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        Container(
          color: Theme.of(context).cardColor,
          padding: const EdgeInsets.all(10.0),
          margin: const EdgeInsets.all(10.0),
          child: Row(children: [
            Container(
              height: AppLayout.getHeight(60),
              width: AppLayout.getWidth(60),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                  image: DecorationImage(
                      fit: BoxFit.fitHeight,
                      image: AssetImage("assets/images/${spList['image']}"))),
            ),
            Gap(AppLayout.getWidth(10)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  spList['name'],
                  style: Styles.healdLineStyle2.copyWith(),
                ),
                Gap(AppLayout.getHeight(5)),
                Row(
                  children: [
                    Text(
                      'Rating: ${spList['Rating']}',
                      style: Styles.healdLineStyle3.copyWith(),
                    ),
                    Gap(AppLayout.getHeight(5)),
                    RatingBar.builder(
                      minRating: 3,
                      itemSize: AppLayout.getWidth(15),
                      itemBuilder: (context, _) =>
                          Icon(Icons.star, color: Colors.amber),
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                    )
                  ],
                ),
              ],
            ),
          ]),
        ),
        Gap(AppLayout.getHeight(15)),
      ]),
    );
  }
}
