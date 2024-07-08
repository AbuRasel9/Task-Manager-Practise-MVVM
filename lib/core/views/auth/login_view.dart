import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_practice/common/extension/context_extension.dart';
import 'package:task_manager_practice/core/model/auth/login_request.dart';
import 'package:task_manager_practice/core/provider/authProvider/auth_provider.dart';
import 'package:task_manager_practice/core/views/home_view/main_bootom_nav.dart';
import 'package:task_manager_practice/utils/constants/enum.dart';
import 'package:task_manager_practice/utils/route/route_name.dart';

import '../../../common/widget/custom_button.dart';
import '../../../common/widget/custom_field.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  //<<-------------->> function <<-------------->>//
  Future<void> loginFunction(context) async {
    final provider = Provider.of<AuthProvider>(context, listen: false);

    final response = await provider.login(
      LoginModelRequest(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
    print(response.status);
    if (response.status == "success") {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => MainBottomNavBar()),
          (route) => false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login Successfull",style: TextStyle(color: Colors.black),),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Please Enter Correct email or password",style: TextStyle(color: Colors.black),),
        ),
      );
    }
  }

  @override
  initState() {
    super.initState();
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //<<-------------->> email <<-------------->>//

              CustomField(
                passwordController: _emailController,
                hintText: 'Enter Email',
                validatorText: "Email",
              ),
              const SizedBox(
                height: 10,
              ),

              CustomField(
                passwordController: _passwordController,
                hintText: 'Enter Password',
                validatorText: "Password",
              ),
              const SizedBox(
                height: 20,
              ),

              const SizedBox(
                height: 10,
              ),
              Consumer<AuthProvider>(
                builder: (BuildContext context, data, Widget? child) {
                  return data.isLoading
                      ? Center(
                          child: CircularProgressIndicator(),
                        )
                      : CustomButton(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              loginFunction(context);
                            }
                          },
                          buttonText: data.isLoading
                              ? Center(
                                  child: CircularProgressIndicator(),
                                )
                              : Text(
                                  "Login",
                                  style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.onSecondary),
                                ),
                        );
                },
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
