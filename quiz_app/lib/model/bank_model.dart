// To parse this JSON data, do
//
//     final bankModel = bankModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

BankModel bankModelFromJson(String str) => BankModel.fromJson(json.decode(str));

String bankModelToJson(BankModel data) => json.encode(data.toJson());

class BankModel {
  BankModel({
    required this.error,
    required this.data,
  });

  bool error;
  List<Datum> data;

  factory BankModel.fromJson(Map<String, dynamic> json) => BankModel(
    error: json["error"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    required this.id,
    required this.subjectName,
    required this.topicName,
    required this.title,
    required this.pdfFilePath,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String subjectName;
  String topicName;
  String title;
  String pdfFilePath;
  String createdAt;
  String updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    subjectName: json["subject_name"],
    topicName: json["topic_name"],
    title: json["title"],
    pdfFilePath: json["pdf_file_path"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "subject_name": subjectName,
    "topic_name": topicName,
    "title": title,
    "pdf_file_path": pdfFilePath,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
