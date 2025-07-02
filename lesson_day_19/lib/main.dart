import 'package:flutter/material.dart';
import 'package:lesson_day_19/ecommerce_screen_after.dart';

void main() {
  runApp(
    StaticApp(),
  );
}

class StaticApp extends StatelessWidget {
  const StaticApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle:
            TextStyle(fontFamily: "LeckerliOne", fontSize: 24)
        )
      ),
      home: ECommerceScreen(),
    );
  }
}



