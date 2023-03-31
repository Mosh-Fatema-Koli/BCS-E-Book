// To parse this JSON data, do
//
//     final currentAffairsModel = currentAffairsModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

CurrentAffairsModel currentAffairsModelFromJson(String str) => CurrentAffairsModel.fromJson(json.decode(str));

String currentAffairsModelToJson(CurrentAffairsModel data) => json.encode(data.toJson());

class CurrentAffairsModel {
  CurrentAffairsModel({
    required this.error,
    required this.data,
  });

  bool error;
  List<Datum> data;

  factory CurrentAffairsModel.fromJson(Map<String, dynamic> json) => CurrentAffairsModel(
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
    required this.title,
    required this.monthYear,
    required this.pdfFilePath,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String subjectName;
  String title;
  String monthYear;
  String pdfFilePath;
  String createdAt;
  String updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        subjectName: json["subject_name"],
        title: json["title"],
        monthYear: json["month_year"],
        pdfFilePath: json["pdf_file_path"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "subject_name": subjectName,
        "title": title,
        "month_year": monthYear,
        "pdf_file_path": pdfFilePath,
        "created_at": createdAt,
        "updated_at": updatedAt,
      };
}
