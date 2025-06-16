import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Datum {
  int? id;
  String? name;
  String? firstName;
  String? lastName;
  String? avatar;
  Datum({
    this.id,
    this.name,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'firstName': firstName,
      'lastName': lastName,
      'avatar': avatar,
    };
  }

  factory Datum.fromMap(Map<String, dynamic> map) {
    return Datum(
      id: map['id'] != null ? map['id'] as int : null,
      name: map['name'] != null ? map['name'] as String : null,
      firstName: map['firstName'] != null ? map['firstName'] as String : null,
      lastName: map['lastName'] != null ? map['lastName'] as String : null,
      avatar: map['avatar'] != null ? map['avatar'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Datum.fromJson(String source) => Datum.fromMap(json.decode(source) as Map<String, dynamic>);
}
