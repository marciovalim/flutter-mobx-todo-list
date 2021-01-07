import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/domain/models/task.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';

class TaskWidget extends StatelessWidget {
  final Task task;

  const TaskWidget({Key key, @required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          leading: Checkbox(value: task.finished, onChanged: task.setFinished),
          title: Text(task.title),
          trailing: IconButton(
            icon: Icon(Icons.delete),
            onPressed: _deleteTask,
          ),
        );
      },
    );
  }

  void _deleteTask() {
    locator<TaskList>().removeByTitle(task.title);
  }
}
