import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

final buttonColors = WindowButtonColors(
    iconNormal: Colors.lightGreenAccent.shade400,
    mouseOver: Colors.lightGreenAccent.shade400,
    mouseDown: const Color.fromARGB(255, 80, 179, 19),
    iconMouseOver: Colors.black,
    iconMouseDown: Colors.white);

final closeButtonColors = WindowButtonColors(
    mouseOver: const Color(0xFFD32F2F),
    mouseDown: const Color(0xFFB71C1C),
    iconNormal: Colors.lightGreenAccent.shade400,
    iconMouseOver: Colors.black);

class WindowButtons extends StatelessWidget {
  const WindowButtons({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(colors: closeButtonColors),
      ],
    );
  }
}
