import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx_todo_list/di/locator.dart';
import 'package:mobx_todo_list/domain/models/task.dart';
import 'package:mobx_todo_list/domain/models/task_list.dart';
import 'package:mobx_todo_list/presentation/pages/home/home_page.dart';

void main() async {
  await LocatorUtils.setup();
  group(
    'Home page',
    () {
      testWidgets(
        'Given home page When task is added Then task appears on the screen',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: HomePage(),
            ),
          );

          locator<TaskList>().add(Task(title: 'Task 1'));
          await tester.pump();

          expect(find.text('Task 1'), findsOneWidget);
        },
      );
      testWidgets(
        'Given home page with some tasks When task is removed Then task disappears from the screen',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: HomePage(),
            ),
          );
          final taskList = locator<TaskList>();
          taskList.add(Task(title: 'Task 1'));
          taskList.add(Task(title: 'Task 2'));
          taskList.add(Task(title: 'Task 3'));
          await tester.pump();

          taskList.removeByTitle('Task 2');
          await tester.pump();

          expect(find.text('Task 2'), findsNothing);
        },
      );
      testWidgets(
        'Given home page with some tasks When filter is changed Then tasks get filtered',
        (tester) async {
          await tester.pumpWidget(
            MaterialApp(
              home: HomePage(),
            ),
          );
          final taskList = locator<TaskList>();
          taskList.add(Task(title: 'Clean 1'));
          taskList.add(Task(title: 'Clean 2'));
          taskList.add(Task(title: 'Work'));
          taskList.add(Task(title: 'Other Task'));
          await tester.pump();

          taskList.setFilter('cl');
          await tester.pump();

          expect(find.text('Clean 1'), findsOneWidget);
          expect(find.text('Clean 2'), findsOneWidget);
          expect(find.text('Work'), findsNothing);
          expect(find.text('OtherTask'), findsNothing);
        },
      );
    },
  );
}
