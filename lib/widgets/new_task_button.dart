import 'package:flutter/material.dart';
import 'package:todo/page/new_task_page.dart';

Widget addNewTaskButton(context, setState) {
  return Positioned(
    right: 20,
    bottom: 20,
    child: FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: Colors.lightGreenAccent.shade400,
      onPressed: () async {
        newTaskPage(context, setState);
      },
      child: const Icon(
        Icons.add_rounded,
        size: 28.0,
      ),
    ),
  );
}
