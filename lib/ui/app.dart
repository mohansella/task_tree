import 'package:flutter/material.dart';
import 'package:task_tree/api/taskapi.dart';

class TaskTreeApp extends StatelessWidget {
  const TaskTreeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Task Tree",
      home: Scaffold(
        body: Column(children: TaskTreeApi.getTasks().map((e) => TaskTreeWidget(e)).toList()),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          tooltip: 'Add Task',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class TaskTreeWidget extends StatelessWidget {

  final TaskTree taskTree;

  const TaskTreeWidget(this.taskTree, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(taskTree.name, style: const TextStyle(fontSize: 20),);
  }

}
