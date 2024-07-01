import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:todo/widgets/new_task_button.dart';
import 'package:todo/widgets/tasklist.dart';
import 'package:todo/widgets/titlebar.dart';

void main() {
  runApp(const MyApp());
  doWhenWindowReady(() {
    const initialSize = Size(350, 450);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todo Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreenAccent.shade400,
        ).copyWith(
          surface: Colors.black,
          primary: Colors.lightGreenAccent.shade400,
          background: Colors.black,
          onSurface: Colors.lightGreenAccent.shade400,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(
              Colors.lightGreenAccent.shade400,
            ),
          ),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'ToDo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Tasks list
          taskList(setState),

          // Title bar
          titleBar(context, widget.title),

          // add new task button
          addNewTaskButton(context, setState)
        ],
      ),
    );
  }
}
