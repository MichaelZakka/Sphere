import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sphere/theme/theme.dart';

class ThemeController extends GetxController {
  bool isDark = false;
  var theme = lightmode;

  void changeTheme() {
    if (theme == darkmode) {
      isDark = true;
      theme = lightmode;
      Get.changeTheme(lightmode);
    } else {
      isDark = false;
      theme = darkmode;
      Get.changeTheme(darkmode);
    }
    update();
  }
}
