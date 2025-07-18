import 'package:flutter/material.dart';
import 'package:lesson_day_20/color_changer.dart';
import 'package:lesson_day_20/home.dart';
// import 'package:lesson_day_20/color';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Change the color",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: ColorChanger(),
    );
  }
}
