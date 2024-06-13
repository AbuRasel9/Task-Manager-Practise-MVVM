import 'package:flutter/material.dart';
import 'package:task_manager_practice/utils/theme/color_scheme.dart';

class ElevatedButtonConfig{
  static final elevatedButtonThemeData=ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: ColorSchemeConfig.lightColorScheme.primary,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
      shadowColor: Colors.transparent,
      elevation: 3,
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      alignment: Alignment.center,
    ),

  );
}