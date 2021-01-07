import 'package:flutter/widgets.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/presentation/app.dart';

void main() async {
  await LocatorUtils.setup();
  runApp(TodoApp());
}
