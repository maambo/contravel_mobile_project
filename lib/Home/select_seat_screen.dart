import 'package:contravel/screens/customer_seat_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/thick_container.dart';

class SelectSeatPage extends StatefulWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  State<SelectSeatPage> createState() => _SelectSeatPageState();
}

class _SelectSeatPageState extends State<SelectSeatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        'http://contravel.000webhostapp.com/ServiceProvider_img/sp_img/Power Tools.jpg'),
                  ),
                ),
                SizedBox(
                  width: AppLayout.getWidth(5),
                ),
                Text(
                  "ticket.serviceProvider",
                  style: Styles.healdLineStyle2.copyWith(color: Colors.white),
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
                  style: Styles.healdLineStyle3.copyWith(color: Colors.white),
                ),
                Expanded(child: Container()),
                ThickContainer(),
                Expanded(
                    child: Stack(children: [
                  SizedBox(
                    height: AppLayout.getHeight(24),
                    child: LayoutBuilder(
                      builder:
                          (BuildContext context, BoxConstraints constraints) {
                        print("The width is ${constraints.constrainWidth()}");
                        return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                                (constraints.constrainWidth() / 6).floor(),
                                (index) => SizedBox(
                                    width: AppLayout.getWidth(3),
                                    height: AppLayout.getHeight(1),
                                    child: DecoratedBox(
                                      decoration:
                                          BoxDecoration(color: Colors.white),
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
                  style: Styles.healdLineStyle3.copyWith(color: Colors.white),
                )
              ],
            ),
            SizedBox(height: AppLayout.getHeight(3)),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              SizedBox(
                width: AppLayout.getWidth(70),
                child: Text(
                  "ticket.fromCity",
                  style: Styles.healdLineStyle4.copyWith(color: Colors.white),
                ),
              ),
              Text(
                'EST hours',
                style: Styles.healdLineStyle4.copyWith(color: Colors.white),
              ),
              SizedBox(
                width: AppLayout.getWidth(100),
                child: Text(
                  "toCity",
                  textAlign: TextAlign.end,
                  style: Styles.healdLineStyle4.copyWith(color: Colors.white),
                ),
              ),
            ])
          ]),
        ),
        CustomerSeatInput(),
      ],
    );
  }
}
