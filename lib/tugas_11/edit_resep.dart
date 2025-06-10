import 'package:belajar_flutter/tugas_11/database/db_helper_resep.dart';
import 'package:belajar_flutter/tugas_11/model/resep_model.dart';
import 'package:belajar_flutter/utils/button.dart';
import 'package:belajar_flutter/utils/textfield.dart';
import 'package:flutter/material.dart';

class EditResepScreen extends StatefulWidget {
  final Resep resep;
  const EditResepScreen({super.key, required this.resep});

  @override
  State<EditResepScreen> createState() => _EditResepScreenState();
}

class _EditResepScreenState extends State<EditResepScreen> {
  late TextEditingController namaController;
  late TextEditingController kategoriController;
  late TextEditingController asalController;
  late TextEditingController bahanController;

  @override
  void initState() {
    namaController = TextEditingController(text: widget.resep.nama);
    kategoriController = TextEditingController(text: widget.resep.kategori);
    asalController = TextEditingController(text: widget.resep.asal);
    bahanController = TextEditingController(text: widget.resep.bahan);
    super.initState();
  }

  void update() async {
    final updated = Resep(
      id: widget.resep.id,
      nama: namaController.text,
      kategori: kategoriController.text,
      asal: asalController.text,
      bahan: bahanController.text,
    );
    await DBHelperResep.updateResep(updated);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Edit Resep ${widget.resep.nama}')),
      body: Column(
        children: [
          CustomTextField(controller: namaController, label: 'Nama Masakan'),
          CustomTextField(controller: kategoriController, label: 'Kategori'),
          CustomTextField(controller: asalController, label: 'Asal Makanan'),
          CustomTextField(controller: bahanController, label: 'Bahan Masakan'),
          DefaultButton(text: 'Update', onPressed: update),
        ],
      ),
    );
  }
}
