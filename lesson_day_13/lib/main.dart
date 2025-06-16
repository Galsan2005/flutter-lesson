import 'package:flutter/material.dart';
import 'package:lesson_day_13/basic_screen.dart';
import 'package:lesson_day_13/flex_screen.dart';
import 'package:lesson_day_13/immutable_widget.dart';
import 'package:lesson_day_13/labeled_container.dart';
import 'package:lesson_day_13/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Layouts',
      home: FlexScreen()
    );
  }
}
