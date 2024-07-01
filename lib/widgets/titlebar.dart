import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';
import 'package:todo/widgets/window_buttons.dart';

Widget titleBar(context, title) {
  return Positioned(
    top: 0,
    right: 0,
    left: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border(
          bottom: BorderSide(
            color: Colors.grey.shade800,
          ),
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
                    title,
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
  );
}
