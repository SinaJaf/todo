import 'package:flutter/material.dart';

ThemeData get googleFormTheme => ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: Colors.lightGreenAccent.shade400,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        border: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.grey.withOpacity(0.4), width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.lightGreenAccent.shade400, width: 2.0),
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2.0),
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.lightGreenAccent.shade400, width: 1.0),
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
        ),
      ),
    );
