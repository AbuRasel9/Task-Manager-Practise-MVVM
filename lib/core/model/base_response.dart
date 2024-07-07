// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

BaseResponse loginModelFromJson(String str) => BaseResponse.fromJson(json.decode(str));

String loginModelToJson(BaseResponse data) => json.encode(data.toJson());

class BaseResponse<T> {
  String? status;
  T? data;

  BaseResponse({
    this.status,
    this.data,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) => BaseResponse(
    status: json["status"],
    data: json["data"],
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data,
  };
}
