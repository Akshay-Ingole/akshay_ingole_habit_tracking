import 'package:akshay_ingole_habit_tracking/comman/theme_provider.dart';
import 'package:akshay_ingole_habit_tracking/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future main() async {
  WidgetsFlutterBinding();
  await Hive.initFlutter();
  //await Hive.openBox(userHiveBox);
  runApp(StartScreen());
}

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return ThemeProviderState(
      child: Builder(
        builder: (context) {
          final themeProvider = ThemeProvider.of(context);
          return MaterialApp(
            theme: themeProvider.isDarkTheme
                ? ThemeData.dark()
                : ThemeData.light(),
            home: HomeScreen(),
          );
        },
      ),
    );
  }
}
