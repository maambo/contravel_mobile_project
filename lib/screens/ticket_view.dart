import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:test_app/service/schedule.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  final Schedule ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
        width: size.width * 0.90,
        height: AppLayout.getHeight(200),
        child: Container(
          margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
          child: Column(children: [
            /* showing blue part of the ticket */
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(AppLayout.getHeight(21)),
                      topRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: AppLayout.getHeight(25),
                      width: AppLayout.getWidth(25),
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(10)),
                          image: const DecorationImage(
                              fit: BoxFit.fitHeight,
                              image:
                                  AssetImage("assets/images/Power_Tools.png"))),
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(5),
                    ),
                    Text(
                      ticket.serviceProvider,
                      style:
                          Styles.healdLineStyle2.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: AppLayout.getHeight(5),
                ),
                Row(
                  children: [
                    Text(
                      "From",
                      style:
                          Styles.healdLineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    ThickContainer(),
                    Expanded(
                        child: Stack(children: [
                      SizedBox(
                        height: AppLayout.getHeight(24),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            print(
                                "The width is ${constraints.constrainWidth()}");
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                    (index) => SizedBox(
                                        width: AppLayout.getWidth(3),
                                        height: AppLayout.getHeight(1),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                              color: Colors.white),
                                        ))));
                          },
                        ),
                      ),
                      const Center(
                        child: Icon(Icons.directions_bus, color: Colors.white),
                      ),
                    ])),
                    ThickContainer(),
                    Expanded(child: Container()),
                    Text(
                      "To",
                      style:
                          Styles.healdLineStyle3.copyWith(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(height: AppLayout.getHeight(3)),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(70),
                        child: Text(
                          ticket.fromCity,
                          style: Styles.healdLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                      Text(
                        '9 hours',
                        style: Styles.healdLineStyle4
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket.toCity,
                          textAlign: TextAlign.end,
                          style: Styles.healdLineStyle4
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    ])
              ]),
            ),
            /* showing orange part of the ticket */
            Container(
              color: const Color(0xFFF37867),
              child: Row(children: [
                const SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10))),
                  ),
                ),
                Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                    (index) => SizedBox(
                                        width: AppLayout.getWidth(5),
                                        height: AppLayout.getHeight(1),
                                        child: DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                        ))));
                          },
                        ))),
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(AppLayout.getHeight(10)),
                            bottomLeft:
                                Radius.circular(AppLayout.getHeight(10)))),
                  ),
                ),
              ]),
            ),
            /* bottom of the ticket */
            Container(
              decoration: BoxDecoration(
                  color: Styles.orengeColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)))),
              padding: EdgeInsets.only(
                  left: AppLayout.getWidth(16),
                  top: AppLayout.getHeight(10),
                  right: AppLayout.getWidth(16),
                  bottom: AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '12/12/2022',
                            style: Styles.healdLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text(
                            "Date",
                            style: Styles.healdLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '05:00hrs',
                            style: Styles.healdLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text(
                            "Departure time",
                            style: Styles.healdLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket.price,
                            style: Styles.healdLineStyle3
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: AppLayout.getHeight(5),
                          ),
                          Text(
                            "Price",
                            style: Styles.healdLineStyle4
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
