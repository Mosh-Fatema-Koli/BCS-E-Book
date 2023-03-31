// To parse this JSON data, do
//
//     final vocabularyModel = vocabularyModelFromJson(jsonString);
import 'dart:convert';

VocabularyModel vocabularyModelFromJson(String str) => VocabularyModel.fromJson(json.decode(str));

String vocabularyModelToJson(VocabularyModel data) => json.encode(data.toJson());

class VocabularyModel {
  VocabularyModel({
    required this.error,
    required this.data,
  });

  bool error;
  List<Datum> data;

  factory VocabularyModel.fromJson(Map<String, dynamic> json) => VocabularyModel(
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
    required this.topicName,
    required this.title,
    required this.pdfFilePath,
    required this.createdAt,
    required this.updatedAt,
  });

  int id;
  String topicName;
  String title;
  String pdfFilePath;
  String createdAt;
  String updatedAt;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    topicName: json["topic_name"],
    title: json["title"],
    pdfFilePath: json["pdf_file_path"],
    createdAt: json["created_at"],
    updatedAt: json["updated_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "topic_name": topicName,
    "title": title,
    "pdf_file_path": pdfFilePath,
    "created_at": createdAt,
    "updated_at": updatedAt,
  };
}
