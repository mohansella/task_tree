import 'package:flutter/material.dart';
import 'package:task_tree/ui/routes.dart';

class TaskTreeApp extends StatelessWidget {
  const TaskTreeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Tree",
      initialRoute: Routes.home,
      routes: Routes.buildRoutes(),
    );
  }
}
