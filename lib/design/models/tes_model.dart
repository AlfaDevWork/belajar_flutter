// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final Cats = CatsFromJson(jsonString);

import 'dart:convert';

List<Cats> CatsFromJson(String str) =>
    List<Cats>.from(json.decode(str).map((x) => Cats.fromJson(x)));

String CatsToJson(List<Cats> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cats {
  String? id;
  String? url;
  int? width;
  int? height;

  Cats({this.id, this.url, this.width, this.height});

  factory Cats.fromJson(Map<String, dynamic> json) => Cats(
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
