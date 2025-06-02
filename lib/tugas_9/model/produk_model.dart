import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ProdukModel {
  final String namaProduk;
  final String gambarProduk;
  final String deskripsiProduk;
  ProdukModel({
    required this.namaProduk,
    required this.gambarProduk,
    required this.deskripsiProduk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namaProduk': namaProduk,
      'gambarProduk': gambarProduk,
      'deskripsiProduk': deskripsiProduk,
    };
  }

  factory ProdukModel.fromMap(Map<String, dynamic> map) {
    return ProdukModel(
      namaProduk: map['namaProduk'] as String,
      gambarProduk: map['gambarProduk'] as String,
      deskripsiProduk: map['deskripsiProduk'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdukModel.fromJson(String source) => ProdukModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
