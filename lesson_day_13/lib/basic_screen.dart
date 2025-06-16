import 'package:flutter/material.dart';
import 'package:lesson_day_13/immutable_widget.dart';
import 'package:lesson_day_13/text_layout.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.lightBlue,
          child: const Center(
            child: Text("I'm a Drawer!"),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: const Text("Hello Basic Screen"),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: ImmutableWidget(),
          ),
          TextLayout()
        ],
      ),
    );
  }
}
