import 'dart:convert';

import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_practice/core/model/auth/login_Response.dart';
import 'package:task_manager_practice/core/model/auth/login_request.dart';
import 'package:http/http.dart' as http;
import 'package:task_manager_practice/core/model/base_response.dart';
import 'package:task_manager_practice/core/model/status_model/task_complete.dart';
import 'package:task_manager_practice/core/provider/authProvider/auth_provider.dart';
import 'package:task_manager_practice/utils/sharePreference/share_preference.dart';

class NetworkRequester {
  //login api call
  Future<LoginResponse> login(LoginModelRequest loginData) async {
    // String token=SharePreferenceData().token ?? "";

    try {

      http.Response response = await http.post(
        Uri.parse("https://task.teamrabbil.com/api/v1/login"),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          // 'Authorization': SharePreferenceData().token ?? "",
        },
        body: jsonEncode(loginData),
      );
      print(response.statusCode);

      if (response.statusCode == 200) {
        // print("token:$token");
        return LoginResponse.fromJson(jsonDecode(response.body));

      }
      return LoginResponse();
    } catch (e) {
      print(e);
    }
    return LoginResponse();
  }



  Future<TaskByStatus> completedTask() async {

    try {

      http.Response response = await http.get(
        Uri.parse("https://task.teamrabbil.com/api/v1/listTaskByStatus/Completed"),
        headers: {
          'Content-type': 'application/json',
          'Accept': 'application/json',
          'token': SharePreferenceData.token ?? "",

        },
      );
      print(SharePreferenceData.token);
      print(response.statusCode);

      if (response.statusCode == 200) {


        return jsonDecode(response.body) ;
      }
    } catch (e) {
      print("$e exception");
    }
    return TaskByStatus();
  }
}
