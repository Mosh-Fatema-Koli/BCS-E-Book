// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);
import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.image,
    required this.number,
    required this.email,
    required this.emailVerifiedAt,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
    required this.institute,
  });

  int id;
  String name;
  dynamic image;
  String number;
  String email;
  dynamic emailVerifiedAt;
  String isActive;
  String createdAt;
  String updatedAt;
  dynamic institute;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        number: json["number"],
        email: json["email"],
        emailVerifiedAt: json["email_verified_at"],
        isActive: json["is_active"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        institute: json["institute"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "number": number,
        "email": email,
        "email_verified_at": emailVerifiedAt,
        "is_active": isActive,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "institute": institute,
      };
}
