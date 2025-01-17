import 'package:flutter/material.dart';

class NavigationHelper {
  static void push(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  static void pop(BuildContext context) {
    Navigator.pop(context);
  }
}
