import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Resep {
  final String nama;
  final String kategori;
  final String asal;
  final String bahan;
  Resep({
    required this.nama,
    required this.kategori,
    required this.asal,
    required this.bahan,
  });

  Map<String, dynamic> toMap() {
    return <String, String>{
      'nama': nama,
      'kategori': kategori,
      'asal': asal,
      'bahan': bahan,
    };
  }

  factory Resep.fromMap(Map<String, dynamic> map) {
    return Resep(
      nama: map['nama'] as String,
      kategori: map['kategori'] as String,
      asal: map['asal'] as String,
      bahan: map['bahan'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Resep.fromJson(String source) =>
      Resep.fromMap(json.decode(source) as Map<String, dynamic>);
}
