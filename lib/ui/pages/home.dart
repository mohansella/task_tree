import 'package:flutter/material.dart';
import 'package:task_tree/api/taskapi.dart';
import 'package:task_tree/ui/routes.dart';
import 'package:task_tree/ui/widgets/tasktree.dart';

class TaskTreeHomePage extends StatelessWidget {
  const TaskTreeHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children:
              TaskTreeApi.getTasks().map((e) => TaskTreeWidget(e)).toList()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.add);
        },
        tooltip: 'Add Task',
        child: const Icon(Icons.add),
      ),
    );
  }
}
