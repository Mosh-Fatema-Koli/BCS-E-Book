// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);
import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.error,
    required this.token,
    required this.message,
    required this.info,
  });

  bool error;
  String token;
  String message;
  Info info;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        error: json["error"],
        token: json["token"],
        message: json["message"],
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "token": token,
        "message": message,
        "info": info.toJson(),
      };
}

class Info {
  Info({
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

  factory Info.fromJson(Map<String, dynamic> json) => Info(
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
