import 'package:flutter/material.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskList = locator<TaskList>();
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: SizedBox(
        height: 25,
        width: 200,
        child: TextField(
          onChanged: taskList.setFilter,
          cursorColor: Colors.white54,
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.search, color: Colors.white70),
            focusColor: Colors.white,
            hintText: 'Search',
            fillColor: Colors.white,
            hintStyle: TextStyle(color: Colors.white38),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white38,
              ),
            ),
          ),
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
