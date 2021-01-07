// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_list.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$TaskList on _TaskListBase, Store {
  Computed<List<Task>> _$filteredListComputed;

  @override
  List<Task> get filteredList =>
      (_$filteredListComputed ??= Computed<List<Task>>(() => super.filteredList,
              name: '_TaskListBase.filteredList'))
          .value;

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

  final _$filterAtom = Atom(name: '_TaskListBase.filter');

  @override
  String get filter {
    _$filterAtom.reportRead();
    return super.filter;
  }

  @override
  set filter(String value) {
    _$filterAtom.reportWrite(value, super.filter, () {
      super.filter = value;
    });
  }

  final _$_TaskListBaseActionController =
      ActionController(name: '_TaskListBase');

  @override
  void setFilter(String value) {
    final _$actionInfo = _$_TaskListBaseActionController.startAction(
        name: '_TaskListBase.setFilter');
    try {
      return super.setFilter(value);
    } finally {
      _$_TaskListBaseActionController.endAction(_$actionInfo);
    }
  }

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
tasks: ${tasks},
filter: ${filter},
filteredList: ${filteredList}
    ''';
  }
}
