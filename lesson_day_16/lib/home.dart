import 'package:flutter/material.dart';
import 'card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
        backgroundColor: Colors.tealAccent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyCard(bgColor: Colors.pinkAccent, productName: "Strawberry", icon: Icons.heart_broken),
              MyCard(bgColor: Colors.blue, productName: "Blueberry", icon: Icons.icecream_rounded),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MyCard(bgColor: Colors.pinkAccent, productName: "Strawberry", icon: Icons.heart_broken),
              MyCard(bgColor: Colors.blue, productName: "Blueberry", icon: Icons.icecream_rounded),
            ],
          )
        ],
      ),
    );
  }
}


