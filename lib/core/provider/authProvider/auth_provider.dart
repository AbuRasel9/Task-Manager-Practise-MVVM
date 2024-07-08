import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:task_manager_practice/core/model/auth/login_request.dart';
import 'package:task_manager_practice/network_requester/network_requester.dart';
import 'package:task_manager_practice/utils/sharePreference/share_preference.dart';

import '../../model/auth/login_Response.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<LoginResponse> login(LoginModelRequest loginData) async {
    _isLoading = true;

    final response = await NetworkRequester().login(loginData);
    _isLoading = false;
    SharePreferenceData.token=response.token?? "";
    print(jsonEncode(response));
    print("jjjjjjjjjjjjjjjjjjjjjjjjjjjjj${SharePreferenceData.token}");

    notifyListeners();
    return response;
  }
}
