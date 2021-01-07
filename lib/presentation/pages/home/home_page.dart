import 'package:flutter/material.dart';
import 'package:mobx_todo_list/presentation/pages/home/add_task_dialog.dart';
import 'package:mobx_todo_list/presentation/pages/home/search_bar.dart';
import 'package:mobx_todo_list/presentation/pages/home/task_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo Mobx'),
        actions: [
          SearchBar(),
          SizedBox(width: 30),
        ],
      ),
      body: TaskListWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AddTaskDialog();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
