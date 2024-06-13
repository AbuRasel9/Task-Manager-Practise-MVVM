import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_practice/core/views/auth/login_view.dart';
import 'package:task_manager_practice/utils/route/route_manager.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:LoginView(),
      onGenerateRoute:Routes.generateRoute,
    );
  }
}
