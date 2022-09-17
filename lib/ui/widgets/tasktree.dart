
import 'package:flutter/material.dart';
import 'package:task_tree/api/taskapi.dart';

class TaskTreeWidget extends StatelessWidget {

  final TaskTree taskTree;

  const TaskTreeWidget(this.taskTree, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(taskTree.name, style: const TextStyle(fontSize: 20),);
  }

}
