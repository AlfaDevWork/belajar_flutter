import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Siswa {
  final int? id;
  final String nama;
  final int umur;
  Siswa({
    this.id,
    required this.nama,
    required this.umur,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'nama': nama,
      'umur': umur,
    };
  }

  factory Siswa.fromMap(Map<String, dynamic> map) {
    return Siswa(
      id: map['id'] != null ? map['id'] as int : null,
      nama: map['nama'] as String,
      umur: map['umur'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Siswa.fromJson(String source) => Siswa.fromMap(json.decode(source) as Map<String, dynamic>);
}
