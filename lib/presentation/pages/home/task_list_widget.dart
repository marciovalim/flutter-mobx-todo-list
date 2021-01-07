import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';
import 'package:mobx_todo_list/presentation/pages/home/task_widget.dart';

class TaskListWidget extends StatelessWidget {
  const TaskListWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        final tasks = locator<TaskList>().filteredList;
        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskWidget(task: tasks[index]);
          },
        );
      },
    );
  }
}
