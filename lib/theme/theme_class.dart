import 'package:flutter/material.dart';
import 'package:training_with_kamal/theme/colors_class.dart';

class ThemeClass with ChangeNotifier {
  static bool _darkTheme = true;

  ThemeMode get currentTheme => _darkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    _darkTheme = !_darkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: ColorsClass.whiteColor,
      primarySwatch: ColorsClass.purpleColor,
      scaffoldBackgroundColor: ColorsClass.whiteColor,
      textTheme: const TextTheme(
        headline1: TextStyle(color: ColorsClass.orangeColor),
        headline6: TextStyle(color: ColorsClass.orangeColor),
      ),
      iconTheme: const IconThemeData(color: ColorsClass.orangeColor),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      primaryColor: const Color.fromARGB(255, 215, 255, 216),
      primarySwatch: ColorsClass.purpleColor,
      scaffoldBackgroundColor: ColorsClass.orangeColor,
      textTheme: const TextTheme(
        headline1: TextStyle(color: ColorsClass.whiteColor),
        headline6: TextStyle(color: ColorsClass.orangeColor),
      ),
      iconTheme: const IconThemeData(color: ColorsClass.whiteColor),
    );
  }
}
