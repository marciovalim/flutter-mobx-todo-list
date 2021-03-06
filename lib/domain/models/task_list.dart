import 'package:mobx/mobx.dart';
import 'package:mobx_todo_list/domain/models/task.dart';
part 'task_list.g.dart';

class TaskList = _TaskListBase with _$TaskList;

abstract class _TaskListBase with Store {
  @observable
  ObservableList<Task> tasks = <Task>[].asObservable();

  @observable
  String filter = "";

  @computed
  List<Task> get filteredList {
    if (filter.isEmpty) {
      return tasks;
    }
    return tasks.where((task) {
      return task.title.toLowerCase().contains(filter.toLowerCase());
    }).toList();
  }

  @action
  void setFilter(String value) => filter = value;

  @action
  void add(Task task) {
    tasks.add(task);
  }

  @action
  void removeByTitle(String title) {
    tasks.removeWhere((element) => element.title == title);
  }
}
