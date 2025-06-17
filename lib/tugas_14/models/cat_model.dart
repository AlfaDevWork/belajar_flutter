// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

List<CatModel> welcomeFromJson(String str) =>
    List<CatModel>.from(json.decode(str).map((x) => CatModel.fromJson(x)));

String welcomeToJson(List<CatModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CatModel {
  String id;
  String url;
  int width;
  int height;

  CatModel({
    required this.id,
    required this.url,
    required this.width,
    required this.height,
  });

  factory CatModel.fromJson(Map<String, dynamic> json) => CatModel(
    id: json["id"],
    url: json["url"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "width": width,
    "height": height,
  };
}
