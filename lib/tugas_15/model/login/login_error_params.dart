// To parse this JSON data, do
//
//     final loginErrorParamsResponse = loginErrorParamsResponseFromJson(jsonString);

import 'dart:convert';

LoginErrorParamsResponse loginErrorParamsResponseFromJson(String str) =>
    LoginErrorParamsResponse.fromJson(json.decode(str));

String loginErrorParamsResponseToJson(LoginErrorParamsResponse data) =>
    json.encode(data.toJson());

class LoginErrorParamsResponse {
  String? message;
  dynamic data;

  LoginErrorParamsResponse({this.message, this.data});

  factory LoginErrorParamsResponse.fromJson(Map<String, dynamic> json) =>
      LoginErrorParamsResponse(message: json["message"], data: json["data"]);

  Map<String, dynamic> toJson() => {"message": message, "data": data};
}
