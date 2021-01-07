// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskList on _TaskListBase, Store {
  final _$tasksAtom = Atom(name: '_TaskListBase.tasks');

  @override
  ObservableList<Task> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(ObservableList<Task> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  final _$_TaskListBaseActionController =
      ActionController(name: '_TaskListBase');

  @override
  void add(Task task) {
    final _$actionInfo =
        _$_TaskListBaseActionController.startAction(name: '_TaskListBase.add');
    try {
      return super.add(task);
    } finally {
      _$_TaskListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeByTitle(String title) {
    final _$actionInfo = _$_TaskListBaseActionController.startAction(
        name: '_TaskListBase.removeByTitle');
    try {
      return super.removeByTitle(title);
    } finally {
      _$_TaskListBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
tasks: ${tasks}
    ''';
  }
}
