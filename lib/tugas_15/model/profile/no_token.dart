// To parse this JSON data, do
//
//     final noTokenResponses = noTokenResponsesFromJson(jsonString);

import 'dart:convert';

NoTokenResponses noTokenResponsesFromJson(String str) =>
    NoTokenResponses.fromJson(json.decode(str));

String noTokenResponsesToJson(NoTokenResponses data) =>
    json.encode(data.toJson());

class NoTokenResponses {
  String? message;

  NoTokenResponses({this.message});

  factory NoTokenResponses.fromJson(Map<String, dynamic> json) =>
      NoTokenResponses(message: json["message"]);

  Map<String, dynamic> toJson() => {"message": message};
}
