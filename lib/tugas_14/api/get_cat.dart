import 'dart:convert';

import 'package:belajar_flutter/design/models/tes_model.dart';
import 'package:belajar_flutter/tugas_14/models/cat_model.dart';
import 'package:http/http.dart' as http;

Future<List<Cats>> getCats() async {
  final response = await http.get(
    Uri.parse('https://api.thecatapi.com/v1/images/search?limit=10'),
  );

  if (response.statusCode == 200) {
    final List<dynamic> userJson = json.decode(response.body);
    return userJson.map((json) => Cats.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load cat');
  }
}
