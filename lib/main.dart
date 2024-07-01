import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:todo/widgets/window_buttons.dart';

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
          primary: Colors.black,
          background: Colors.black,
          onSurface: Colors.lightGreenAccent.shade400,
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
          ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                title: const Text("Title"),
                onTap: () {},
              );
            },
          ),

          // Title bar
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade800),
                ),
              ),
              child: WindowTitleBarBox(
                child: Row(
                  children: [
                    Expanded(
                      child: MoveWindow(
                        child: Container(
                          padding: const EdgeInsets.only(left: 8.0),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            widget.title,
                            style: Theme.of(context).textTheme.labelMedium,
                          ),
                        ),
                      ),
                    ),
                    const WindowButtons(),
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              backgroundColor: Colors.lightGreenAccent.shade400,
              onPressed: () {},
              child: const Icon(Icons.add_rounded),
            ),
          ),
        ],
      ),
    );
  }
}
