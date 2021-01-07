import 'package:get_it/get_it.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';

final locator = GetIt.instance;

class LocatorUtils {
  const LocatorUtils._();

  static Future<void> setup() async {
    locator.registerSingleton<TaskList>(TaskList());
  }
}
