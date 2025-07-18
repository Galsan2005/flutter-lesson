import 'package:flutter/material.dart';
import 'package:project_3/home_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Color(0xffFFFBFB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Text.rich(TextSpan(
          text: "Welcome to ",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            color: Color(0xfff2968F),
          ),
          children: [
            TextSpan(
              text: "takee",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Color(0xffF2968F),
              )
            )
          ]
        ),textAlign: TextAlign.center,),
          Container(
            child: Image.asset("assets/images/379a31e5c285648951a5e7d09b0d3825be29ebfd.png"),
          ),
          Container(
            width: 150,
            height: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Color(0xfff2968F),
            ),
            child: TextButton(onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }, child: Text("Start", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30, color: Color(0xffF1F1F1)),)),
          )
      ]),
    ));
  }
}
