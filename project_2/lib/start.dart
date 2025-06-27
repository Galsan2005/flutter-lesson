import 'package:flutter/material.dart';
import 'package:project_2/home.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xffFE5150),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 414,
            height: 500,
            child: Image.asset(
              "assets/images/delivery-man 2.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 40, left: 35, right: 35),
            width: 344,
            height: 285,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(26),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.34),
                    offset: Offset(1, 6),
                    blurRadius: 17,
                    spreadRadius: 2)
              ],
            ),
            child: Column(
              children: [
                Text.rich(
                  TextSpan(
                      text: "Quick Delivery at your ",
                      style: TextStyle(
                          fontSize: 31,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4F4F4F)),
                      children: [
                        TextSpan(
                            text: "Doorstep",
                            style: TextStyle(
                                fontSize: 31,
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                color: Color(0xffFE5150))),
                      ]),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11, bottom: 20),
                  child: Text(
                    "Home delivery and onlione reservation system for retaurants and cafe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffBDBDBD),
                    ),
                  ),
                ),
                Container(
                  width: 210,
                  height: 68,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xffF68989),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.34),
                          offset: Offset(0, 4),
                          blurRadius: 4,
                          spreadRadius: 0,
                        )
                      ]),
                  child: TextButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));},
                      child: Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      )),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
