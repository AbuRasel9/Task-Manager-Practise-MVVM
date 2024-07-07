// To parse this JSON data, do
//
//     final loginModelRequest = loginModelRequestFromJson(jsonString);

import 'dart:convert';

LoginModelRequest loginModelRequestFromJson(String str) => LoginModelRequest.fromJson(json.decode(str));

String loginModelRequestToJson(LoginModelRequest data) => json.encode(data.toJson());

class LoginModelRequest {
  String? email;
  String? password;

  LoginModelRequest({
    this.email,
    this.password,
  });

  factory LoginModelRequest.fromJson(Map<String, dynamic> json) => LoginModelRequest(
    email: json["email"],
    password: json["password"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "password": password,
  };
}
