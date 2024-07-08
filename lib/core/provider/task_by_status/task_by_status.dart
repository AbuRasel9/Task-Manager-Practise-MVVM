import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:task_manager_practice/core/model/status_model/task_complete.dart';

import '../../../network_requester/network_requester.dart';

class TaskByStatus with ChangeNotifier{
  //<<-------------->>  variable create complete task <<-------------->>//
  List<TaskByStatus> _completeTask=[];
  //get complete task
  List<TaskByStatus> get completeTask=>_completeTask;

  //api call
  bool _isLoading = false;

  bool get isLoading => _isLoading;

  Future<void>taskComplete() async {
    _isLoading = true;

    final response = await NetworkRequester().completedTask();
    print(jsonEncode("jjjjjjjjjjj${}"));

    // _completeTask=response.data ?? TaskComplete();
    // print(_completeTask);
    _isLoading = false;

    notifyListeners();
  }



}