import 'package:flutter/material.dart';

import '../models/task.dart';
import 'tasks_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList(this.tasks);

  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        var taskItem = widget.tasks[index];
        return TasksTile(
          taskTitle: taskItem.name,
          isChecked: taskItem.isDone,
          checkboxCallback: (val) {
            setState(() {
              taskItem.toggleDone();
            });
          },
          onLongPress: () {
            setState(() {
              widget.tasks.remove(taskItem);
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
