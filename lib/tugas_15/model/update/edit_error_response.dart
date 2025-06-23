// To parse this JSON data, do
//
//     final errorProfileResponses = errorProfileResponsesFromJson(jsonString);

import 'dart:convert';

ErrorProfileResponses errorProfileResponsesFromJson(String str) =>
    ErrorProfileResponses.fromJson(json.decode(str));

String errorProfileResponsesToJson(ErrorProfileResponses data) =>
    json.encode(data.toJson());

class ErrorProfileResponses {
  String? message;
  Errors? errors;

  ErrorProfileResponses({this.message, this.errors});

  factory ErrorProfileResponses.fromJson(Map<String, dynamic> json) =>
      ErrorProfileResponses(
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

  Errors({this.name});

  factory Errors.fromJson(Map<String, dynamic> json) => Errors(
    name:
        json["name"] == null
            ? []
            : List<String>.from(json["name"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? [] : List<dynamic>.from(name!.map((x) => x)),
  };
}
