
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_manager_practice/core/views/auth/login_view.dart';
import 'package:task_manager_practice/core/views/auth/sign_up_view.dart';
import 'package:task_manager_practice/utils/route/route_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
        case RoutesName.login:
          return MaterialPageRoute(
            builder: (context) => const LoginView(),
          );
        case RoutesName.signUp:
          return MaterialPageRoute(
            builder: (context) => const LoginView(),
          );
          case RoutesName.home:
          return MaterialPageRoute(
            builder: (context) => const LoginView(),
          );

        default:
          return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text("No Page Found"),
            ),
          ),
        );
    }
  }
}
