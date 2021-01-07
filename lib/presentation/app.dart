import 'package:flutter/material.dart';
import 'package:mobx_todo_list/presentation/pages/home/home_page.dart';

class TodoApp extends StatelessWidget {
  const TodoApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Todo Mobx",
      home: HomePage(),
    );
  }
}
