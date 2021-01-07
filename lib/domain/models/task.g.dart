// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _TaskBase, Store {
  final _$titleAtom = Atom(name: '_TaskBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$finishedAtom = Atom(name: '_TaskBase.finished');

  @override
  bool get finished {
    _$finishedAtom.reportRead();
    return super.finished;
  }

  @override
  set finished(bool value) {
    _$finishedAtom.reportWrite(value, super.finished, () {
      super.finished = value;
    });
  }

  final _$_TaskBaseActionController = ActionController(name: '_TaskBase');

  @override
  void setTitle(String value) {
    final _$actionInfo =
        _$_TaskBaseActionController.startAction(name: '_TaskBase.setTitle');
    try {
      return super.setTitle(value);
    } finally {
      _$_TaskBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFinished(bool value) {
    final _$actionInfo =
        _$_TaskBaseActionController.startAction(name: '_TaskBase.setFinished');
    try {
      return super.setFinished(value);
    } finally {
      _$_TaskBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
title: ${title},
finished: ${finished}
    ''';
  }
}
