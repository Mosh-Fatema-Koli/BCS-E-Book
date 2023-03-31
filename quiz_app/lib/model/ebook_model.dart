// To parse this JSON data, do
//
//     final ebookModel = ebookModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

EbookModel ebookModelFromJson(String str) => EbookModel.fromJson(json.decode(str));

String ebookModelToJson(EbookModel data) => json.encode(data.toJson());

class EbookModel {
  EbookModel({
    required this.error,
    required this.data,
  });

  bool error;
  List<Datum> data;

  factory EbookModel.fromJson(Map<String, dynamic> json) => EbookModel(
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
    required this.className,
    required this.topicName,
    required this.title,
    required this.pdfFilePath,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String className;
  String topicName;
  String title;
  String pdfFilePath;
  String createdAt;
  String updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    className: json["class_name"],
    topicName: json["topic_name"],
    title: json["title"],
    pdfFilePath: json["pdf_file_path"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "class_name": className,
    "topic_name": topicName,
    "title": title,
    "pdf_file_path": pdfFilePath,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
