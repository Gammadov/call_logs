import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyle {

  static TextStyle bold17({Color? color = AppColor.primary}) {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: color,
    );
  }

  static TextStyle regular30({Color? color = AppColor.primary}) {
    return TextStyle(
      fontSize: 30,
      color: color,
    );
  }

  static TextStyle regular15({Color? color = AppColor.secondary}) {
    return TextStyle(
      fontSize: 15,
      color: color,
    );
  }
}
