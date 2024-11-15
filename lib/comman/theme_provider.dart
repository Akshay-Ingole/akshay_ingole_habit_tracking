import 'package:flutter/material.dart';

class ThemeProvider extends InheritedWidget {
  final bool isDarkTheme;
  final Function toggleTheme;
  ThemeProvider({
    required Widget child,
    required this.isDarkTheme,
    required this.toggleTheme,
  }) : super(child: child);
  static ThemeProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeProvider>()!;
  }

  @override
  bool updateShouldNotify(ThemeProvider oldWidget) {
    return oldWidget.isDarkTheme != isDarkTheme;
  }
}

class ThemeProviderState extends StatefulWidget {
  final Widget child;
  ThemeProviderState({required this.child});
  @override
  _ThemeProviderState createState() => _ThemeProviderState();
}

class _ThemeProviderState extends State<ThemeProviderState> {
  bool _isDarkTheme = false;
  void _toggleTheme() {
    setState(() {
      _isDarkTheme = !_isDarkTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      isDarkTheme: _isDarkTheme,
      toggleTheme: _toggleTheme,
      child: widget.child,
    );
  }
}
