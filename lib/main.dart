import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_practice/core/views/auth/login_view.dart';
import 'package:task_manager_practice/core/views/onBoardingView/on_boarding_screen.dart';
import 'package:task_manager_practice/utils/route/route_manager.dart';
import 'package:task_manager_practice/utils/theme/theme_data.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:LoginView(),
      theme: ThemeDataConfig.lightTheme,
      // darkTheme: ThemeDataConfig.darkTheme,

      onGenerateRoute:Routes.generateRoute,
    );
  }
}
