import 'package:todo/data/task.dart';

List<ToDoTask> todoList = [];

void addTask(
  String title,
  String? description,
) {
  todoList.add(
    ToDoTask(
      title,
      description,
    ),
  );
  return;
}
