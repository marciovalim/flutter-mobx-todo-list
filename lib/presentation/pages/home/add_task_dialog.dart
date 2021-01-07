import 'package:flutter/material.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/domain/models/task.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';

class AddTaskDialog extends StatefulWidget {
  const AddTaskDialog({Key key}) : super(key: key);

  @override
  _AddTaskDialogState createState() => _AddTaskDialogState();
}

class _AddTaskDialogState extends State<AddTaskDialog> {
  final newTask = Task();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Add Task',
        style: TextStyle(color: Colors.blue),
      ),
      content: TextField(
        onChanged: newTask.setTitle,
        decoration: InputDecoration(
          labelText: 'Title',
        ),
      ),
      actions: [
        FlatButton(
          child: Text('Cancel'),
          onPressed: _close,
        ),
        FlatButton(
          child: Text('Save'),
          onPressed: _saveAndClose,
        ),
      ],
    );
  }

  void _saveAndClose() {
    locator<TaskList>().add(newTask);
    _close();
  }

  void _close() => Navigator.of(context, rootNavigator: true).pop();
}
