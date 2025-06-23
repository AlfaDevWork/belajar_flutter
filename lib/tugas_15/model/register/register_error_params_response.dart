// To parse this JSON data, do
//
//     final registerErrorParamsResponse = registerErrorParamsResponseFromJson(jsonString);

import 'dart:convert';

RegisterErrorParamsResponse registerErrorParamsResponseFromJson(String str) =>
    RegisterErrorParamsResponse.fromJson(json.decode(str));

String registerErrorParamsResponseToJson(RegisterErrorParamsResponse data) =>
    json.encode(data.toJson());

class RegisterErrorParamsResponse {
  String? message;
  Errors? errors;

  RegisterErrorParamsResponse({this.message, this.errors});

  factory RegisterErrorParamsResponse.fromJson(Map<String, dynamic> json) =>
      RegisterErrorParamsResponse(
        message: json["message"],
        errors: json["errors"] == null ? null : Errors.fromJson(json["errors"]),
      );

  Map<String, dynamic> toJson() => {
    "message": message,
    "errors": errors?.toJson(),
  };
}

class Errors {
  List<String>? name;
  List<String>? email;
  List<String>? password;

  Errors({this.name, this.email, this.password});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
    name:
        json["name"] == null
            ? []
            : List<String>.from(json["name"]!.map((x) => x)),
    email:
        json["email"] == null
            ? []
            : List<String>.from(json["email"]!.map((x) => x)),
    password:
        json["password"] == null
            ? []
            : List<String>.from(json["password"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? [] : List<dynamic>.from(name!.map((x) => x)),
    "email": email == null ? [] : List<dynamic>.from(email!.map((x) => x)),
    "password":
        password == null ? [] : List<dynamic>.from(password!.map((x) => x)),
  };
}
