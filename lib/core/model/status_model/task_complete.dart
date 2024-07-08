// To parse this JSON data, do
//
//     final loginModelRequest = loginModelRequestFromJson(jsonString);

import 'dart:convert';

TaskByStatus loginModelRequestFromJson(String str) => TaskByStatus.fromJson(json.decode(str));

String loginModelRequestToJson(TaskByStatus data) => json.encode(data.toJson());

class TaskByStatus {
  String? status;
  List<Datum>? data;

  TaskByStatus({
    this.status,
    this.data,
  });

  factory TaskByStatus.fromJson(Map<String, dynamic> json) => TaskByStatus(
    status: json["status"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  String? id;
  String? title;
  String? description;
  String? status;
  String? createdDate;

  Datum({
    this.id,
    this.title,
    this.description,
    this.status,
    this.createdDate,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["_id"],
    title: json["title"],
    description: json["description"],
    status: json["status"],
    createdDate: json["createdDate"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "title": title,
    "description": description,
    "status": status,
    "createdDate": createdDate,
  };
}
