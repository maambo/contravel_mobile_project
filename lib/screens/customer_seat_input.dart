import 'package:contravel/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomerSeatInput extends StatelessWidget {
  const CustomerSeatInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: AppLayout.getWidth(20), right: AppLayout.getWidth(20)),
      child: Row(children: [
        Container(
            //customer input

            ),
        Container(
            //seat configaration
            ),
      ]),
    );
  }
}
