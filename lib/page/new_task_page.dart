import 'package:flutter/material.dart';
import 'package:todo/data/list.dart';
import 'package:todo/widgets/input_theme.dart';

Future<dynamic> newTaskPage(context, setState) async {
  final _formKey = GlobalKey<FormState>();
  String tempTaskName = "";
  String? tempTaskDesc;

  return await showDialog<void>(
    context: context,
    builder: (context) => Stack(
      children: [
        AlertDialog(
          backgroundColor: Colors.grey.shade800,
          shadowColor: Colors.grey.shade700,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
          ),
          title: const Text("Add new task"),
          content: Stack(
            clipBehavior: Clip.none,
            children: <Widget>[
              Form(
                key: _formKey,
                child: Theme(
                  data: googleFormTheme,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.lightGreenAccent.shade400,
                          ),
                          decoration: const InputDecoration(
                            label: Text("Task name"),
                          ),
                          validator: (value) {
                            if (value == null || value.trim() == "") {
                              return "Enter a task title";
                            }
                            return null;
                          },
                          onSaved: (newValue) {
                            tempTaskName = newValue!;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: TextFormField(
                          style: TextStyle(
                            color: Colors.lightGreenAccent.shade400,
                          ),
                          decoration: const InputDecoration(
                            label: Text("Task Description"),
                          ),
                          validator: (value) => null,
                          onSaved: (newValue) {
                            tempTaskDesc = newValue;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                const WidgetStatePropertyAll(Colors.black),
                            backgroundColor: WidgetStatePropertyAll(
                              Colors.lightGreenAccent.shade400,
                            ),
                          ),
                          child: const Text('Add'),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              addTask(tempTaskName, tempTaskDesc);
                              setState(() {});
                              Navigator.of(context).pop();
                            }
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 25,
          top: 71,
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.close_rounded),
            ),
          ),
        ),
      ],
    ),
  );
}
