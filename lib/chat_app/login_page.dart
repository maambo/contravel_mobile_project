import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:test_app/chat_app/Register_page.dart';
import 'package:test_app/screens/router.gr.dart';
import 'package:test_app/utils/app_layout.dart';
import 'package:test_app/utils/app_styles.dart';
import 'package:test_app/widgets/input_fields.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginPage extends StatefulWidget {
  //final int postId;
  const LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formkey = GlobalKey<FormState>();
  String password = "";
  String email = "";
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
            child: Column(children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Customer FeedBack",
                style: Styles.healdLineStyle2.copyWith(color: Colors.white),
              ),
            ]),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(20),
                vertical: AppLayout.getHeight(40)),
            child: Form(
              key: formkey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Login now to communicate with your service provider",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                    ),
                    Image.asset("assets/images/bus_station.png"),
                    Gap(AppLayout.getHeight(15)),
                    TextFormField(
                      decoration: textInputDecoration.copyWith(
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email, color: Styles.textColor),
                      ),
                      onChanged: (val) {
                        setState(() {
                          email = val;
                        });
                      },
                      validator: (val) {
                        return RegExp(
                                    r"^ [a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_` {|}~]+@[a-zA-Z0-9]+\. [a-zA-Z]+")
                                .hasMatch(val!)
                            ? null
                            : "Please enter a valid email";
                      },
                    ),
                    Gap(AppLayout.getHeight(15)),
                    TextFormField(
                      obscureText: true,
                      decoration: textInputDecoration.copyWith(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Styles.textColor),
                      ),
                      validator: (val) {
                        if (val!.length < 6) {
                          return "Password must be at Least 6 characters";
                        } else {
                          return null;
                        }
                      },
                      onChanged: (val) {
                        setState(() {
                          password = val;
                        });
                      },
                    ),
                    Gap(AppLayout.getHeight(15)),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Theme.of(context).primaryColor,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        onPressed: () {
                          login();
                        },
                      ),
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Text.rich(TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(color: Colors.black, fontSize: 14),
                      children: <TextSpan>[
                        TextSpan(
                            text: "Register here",
                            style: const TextStyle(
                                color: Colors.black,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                context.router.push(
                                  const RegisterRoute(),
                                );
                              }),
                      ],
                    ))
                  ]),
            ),
          )
        ],
      ),
    );
  }

  login() {
    if (formkey.currentState!.validate()) {}
  }
}
