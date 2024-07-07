// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginResponse loginModelFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginModelToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
  String? status;
  String? token;
  Data? data;

  LoginResponse({
    this.status,
    this.token,
    this.data,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
    status: json["status"],
    token: json["token"],
    data: json["data"] == null ? null : Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "token": token,
    "data": data?.toJson(),
  };
}

class Data {
  String? email;
  String? firstName;
  String? lastName;
  String? mobile;
  String? photo;

  Data({
    this.email,
    this.firstName,
    this.lastName,
    this.mobile,
    this.photo,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    email: json["email"],
    firstName: json["firstName"],
    lastName: json["lastName"],
    mobile: json["mobile"],
    photo: json["photo"],
  );

  Map<String, dynamic> toJson() => {
    "email": email,
    "firstName": firstName,
    "lastName": lastName,
    "mobile": mobile,
    "photo": photo,
  };
}
