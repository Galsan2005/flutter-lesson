import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lesson_day_31/firebase_options.dart';
import 'package:lesson_day_31/screens/login_page.dart';
import 'package:lesson_day_31/screens/signup_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MaterialApp(
      home: SignupScreen(),
    )
  );
}
