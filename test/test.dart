import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_todo_list/domain/models/task.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';

void main() {
  testTask();
  testTaskList();
}

void testTask() {
  group('Task', () {
    test('Given a "task" When set title Then title update', () {
      final task = Task(title: 'New task');

      final newName = 'New task modified';
      task.setTitle(newName);

      expect(task.title, newName);
    });
    test('Given a "task" When set checked Then checked update', () {
      final task = Task(title: 'New task');

      task.setFinished(true);

      expect(task.finished, true);
    });
  });
}

void testTaskList() {
  group(
    'Task List',
    () {
      test(
        'Given a "task list" When add is called Then task is added',
        () {
          final taskList = TaskList();

          final newTask = Task(title: 'Task 0');
          taskList.add(newTask);

          expect(taskList.tasks[0], newTask);
        },
      );
      test(
        'Given a "task list" with some tasks When remove is called Then task is removed',
        () {
          final taskList = TaskList();
          taskList.add(Task(title: 'Task 0'));
          taskList.add(Task(title: 'Task 1'));
          taskList.add(Task(title: 'Task 2'));
          taskList.add(Task(title: 'Task 3'));

          taskList.removeByTitle('Task 2');

          expect(taskList.tasks.length, 3);
          expect(taskList.tasks[2].title, 'Task 3');
        },
      );
      test(
        'Given task list with some tasks When filter is changed Then filtered list updates',
        () {
          final taskList = TaskList();
          taskList.add(Task(title: 'Clean 1'));
          taskList.add(Task(title: 'Clean 2'));
          taskList.add(Task(title: 'Other task'));
          taskList.add(Task(title: 'Work'));

          taskList.setFilter('cl');

          expect(taskList.filteredList.length, 2);
          expect(taskList.filteredList[0].title, 'Clean 1');
        },
      );
    },
  );
}
