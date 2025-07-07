import 'package:lesson_day_22/models/task.dart';

class Plan {
  final String name;
  final List<Task> tasks;
  const Plan({this.name = "", this.tasks = const []});
  int get completedCount => tasks.where((task) => task.complete).length;
  String get completenessMessage => " $completedCount of ${tasks.length} tasks";
}