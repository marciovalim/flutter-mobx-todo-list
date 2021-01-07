import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
part 'task.g.dart';

class Task = _TaskBase with _$Task;

abstract class _TaskBase with Store {
  _TaskBase({
    @required this.title,
    this.finished = false,
  });

  @observable
  String title;

  @observable
  bool finished;

  @action
  void setTitle(String value) => title = value;

  @action
  void setFinished(bool value) => finished = value;
}
