import 'package:flutter/material.dart';
import 'package:lesson_day_22/plan_provider.dart';
import 'package:lesson_day_22/views/plan_screen.dart';
import 'models/plan.dart';

void main() {
  runApp(const MasterPlanApp());
}

class MasterPlanApp extends StatelessWidget {
  const MasterPlanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Master Plan",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: PlanProvider(child: PlanScreen(), notifier: ValueNotifier<Plan>(const Plan())),
    );
  }
}

