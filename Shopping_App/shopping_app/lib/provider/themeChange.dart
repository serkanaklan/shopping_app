import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopping_app/theme/theme.dart';

class ThemeChange with ChangeNotifier {
  ThemeData get theme {
    return themeState ? darkmode : lightmode;
  }

  late SharedPreferences sharedPreferences;
  void ChangeTheme() {
    themeState = !themeState;
    notifyListeners();
  }

  Future<void> sharedPref() async {
    print("HATA GELEBİİR");
    sharedPreferences = await SharedPreferences.getInstance();
  }

  void saveTheme(bool _) {
    sharedPreferences.setBool("themeData", _);
    themeState = sharedPreferences.getBool("themeData") ?? true;
  }

  void lastTheme() async {
    await sharedPref();
    sharedPreferences.getBool("themeData");
  }
}
