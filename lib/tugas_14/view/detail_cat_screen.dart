import 'package:belajar_flutter/tugas_14/models/cat_model.dart';
import 'package:flutter/material.dart';

class DetailCatScreen extends StatelessWidget {
  final CatModel cat;
  const DetailCatScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),);
  }
}
