// To parse this JSON data, do
//
//     final loginErrorResponse = loginErrorResponseFromJson(jsonString);

import 'dart:convert';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str));

String loginErrorResponseToJson(LoginErrorResponse data) =>
    json.encode(data.toJson());

class LoginErrorResponse {
  String? message;
  dynamic data;

  LoginErrorResponse({this.message, this.data});

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
      LoginErrorResponse(message: json["message"], data: json["data"]);

  Map<String, dynamic> toJson() => {"message": message, "data": data};
}
