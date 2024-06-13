import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension ContextUnits on BuildContext{
  ThemeData get theme=>Theme.of(this);
  Size get screenSize=>MediaQuery.of(this).size;

}