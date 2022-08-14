
import 'package:flutter/material.dart';
import 'package:wallet_manager/constants/style.dart';
import 'package:wallet_manager/services/shared_data.dart';

class ThemeNotifier with ChangeNotifier {
  Color bgColor = lightBgColor;
  TextStyle text18 = text18black;
  TextStyle title = titleblack;
  bool darkMode = false;
  Color btnColor = lightBlueColor;
  Color invertedColor = darkBgColor;
  Color navBarColor = lightnavBarColor;
  Color primaryColor = primaryColor_;

  void changeDarkMode(value) async {
    switch (value) {
      case true:
        bgColor = darkBgColor;
        text18 = text18white;
        title = titleWhite;
        btnColor = darkBtnColor;
        invertedColor = lightBgColor;
        navBarColor = darknavBarColor;
        primaryColor = secondaryColor_;
        break;
      case false:
        bgColor = lightBgColor;
        text18 = text18black;
        title = titleblack;
        btnColor = lightBlueColor;
        invertedColor = darkBgColor;
        navBarColor = lightnavBarColor;
        primaryColor = primaryColor_;
        break;
      default:
        break;
    }
    darkMode = value;
    notifyListeners();
    DataPrefrences.setDarkMode(darkMode);
  }

  initTheme(value) {
    switch (value) {
      case true:
        bgColor = darkBgColor;
        text18 = text18white;
        title = titleWhite;
        btnColor = darkBtnColor;
        invertedColor = lightBgColor;
        navBarColor = darknavBarColor;
        primaryColor = secondaryColor_;
        break;
      case false:
        bgColor = lightBgColor;
        text18 = text18black;
        title = titleblack;
        btnColor = lightBlueColor;
        invertedColor = darkBgColor;
        navBarColor = lightnavBarColor;
        primaryColor = primaryColor_;
        break;
      default:
        break;
    }
    darkMode = value;
  }
}
