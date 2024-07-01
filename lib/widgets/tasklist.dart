import 'package:flutter/material.dart';
import 'package:todo/data/list.dart';

Widget taskList(setState) {
  return ListView.separated(
    padding: const EdgeInsets.only(top: 31.0),
    itemCount: todoList.length + 1,
    itemBuilder: (context, index) {
      if (index == todoList.length) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          child: const Center(
            child: Text(
              "Designed with LOVE\nSiJ",
              textAlign: TextAlign.center,
            ),
          ),
        );
      }
      return ListTile(
        leading: Checkbox(
          value: todoList[index].getIsDone,
          onChanged: (value) {
            setState(() {
              todoList[index].setIsDone();
            });
          },
        ),
        title: Text(
          todoList[index].getTitle,
          style: todoList[index].getIsDone
              ? const TextStyle(
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                )
              : null,
        ),
        subtitle: todoList[index].getDescription == "" ||
                todoList[index].isDescriptionEmpty()
            ? null
            : Text(
                todoList[index].getDescription!,
                style: todoList[index].getIsDone
                    ? const TextStyle(
                        decoration: TextDecoration.lineThrough,
                      )
                    : null,
              ),
        horizontalTitleGap: Checkbox.width,
        onTap: () {},
      );
    },
    separatorBuilder: (context, index) {
      return Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.grey.shade800,
            ),
          ),
        ),
      );
    },
  );
}
