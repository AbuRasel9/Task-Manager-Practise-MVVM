import 'package:flutter/material.dart';
import 'package:task_manager_practice/core/provider/authProvider/auth_provider.dart';
import 'package:task_manager_practice/core/provider/task_by_status/task_by_status.dart';
import 'package:task_manager_practice/core/views/auth/login_view.dart';
import 'package:task_manager_practice/core/views/onBoardingView/on_boarding_screen.dart';
import 'package:task_manager_practice/utils/route/route_manager.dart';
import 'package:task_manager_practice/utils/theme/theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => TaskByStatus())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginView(),
        theme: ThemeDataConfig.lightTheme,
        // darkTheme: ThemeDataConfig.darkTheme,

        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
