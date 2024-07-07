import 'package:flutter/material.dart';
import 'package:task_manager_practice/common/extension/context_extension.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _isSignUpScreen = true;
  bool _isMale = true;
  bool _isRemember = false;
  final _form = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final screenSize = context.screenSize;
    return Scaffold(
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //<<-------------->> email <<-------------->>//

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                    hintText: "Enter email", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),

              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                    hintText: "Enter password", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: theme.colorScheme.primary),
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: theme.textTheme.bodySmall
                          ?.copyWith(color: theme.colorScheme.onPrimary),
                    ),
                  )),
              const SizedBox(
                height: 10,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Don't Have Account Signup",
                ),
              )
            ],
          ),
        ),
      ) /* Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            height: screenSize.height / 3,
            width: double.infinity,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(.85),
              // image: DecorationImage(image: AssetImage())
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //<<-------------->> welcome text <<-------------->>//

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome To Back",
                      style: theme.textTheme.headlineLarge
                          ?.copyWith(color: theme.colorScheme.inverseSurface),
                    ),
                    _isSignUpScreen
                        ? Text(
                            " Task Manager ",
                            style: theme.textTheme.headlineLarge?.copyWith(
                              color: theme.colorScheme.inverseSurface,
                            ),
                          )
                        : Text(
                            "Back",
                            style: theme.textTheme.headlineLarge?.copyWith(
                                color: theme.colorScheme.inverseSurface),
                          ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  _isSignUpScreen ? "Signup to Continue" : "Signin to Continue",
                  style: theme.textTheme.titleLarge
                      ?.copyWith(color: theme.colorScheme.onPrimary),
                )
              ],
            ),
          ),
          //<<-------------->> animation for different screen <<-------------->>//
          AnimatedPositioned(
            curve: Curves.bounceInOut,
            top: _isSignUpScreen ? 200 : 230,
            duration: const Duration(seconds: 500),
            child: AnimatedContainer(
              duration: const Duration(seconds: 500),
            ),
          ),
        ],
      )*/
      ,
    );
  }
}
