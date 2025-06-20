import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/smothie_page.dart';

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
      backgroundColor: Color(0xfffff3f3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset("assets/images/Frame 9.png"),
          ),
          Padding(padding: EdgeInsets.only(top: 55)),
          Container(
            width: 300,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Color(0xffffdaf2),
            ),
            padding: EdgeInsets.only(top: 0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SmothiePage()));
                },
                child: Text(
                  'Start',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 70,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w900,
                    color: Color(0xffff57ac8),
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}
