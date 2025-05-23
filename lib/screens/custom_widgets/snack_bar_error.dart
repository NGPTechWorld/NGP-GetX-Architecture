import 'package:flutter/material.dart';
import '../../app/config/color_manager.dart';
import '../../app/config/style_manager.dart';

class SnackBarCustom {
  static void show(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
          content: Center(
        child: Text(
          msg,
          style: StyleManager.h4_Semibold(color: ColorManager.whiteColor),
        ),
      )),
    );
  }
}
