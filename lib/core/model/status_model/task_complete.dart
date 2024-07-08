// To parse this JSON data, do
//
//     final loginModelRequest = loginModelRequestFromJson(jsonString);

import 'dart:convert';



class TaskComplete {
  String? id;
  String? title;
  String? description;
  String? status;
  String? createdDate;

  TaskComplete({
    this.id,
    this.title,
    this.description,
    this.status,
    this.createdDate,
  });

  factory TaskComplete.fromJson(Map<String, dynamic> json) => TaskComplete(
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
