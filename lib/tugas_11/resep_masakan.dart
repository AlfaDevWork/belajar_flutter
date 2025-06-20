import 'package:belajar_flutter/tugas_11/database/db_helper_resep.dart';
import 'package:belajar_flutter/tugas_11/edit_resep.dart';
import 'package:belajar_flutter/tugas_11/model/resep_model.dart';
import 'package:belajar_flutter/utils/button.dart';
import 'package:belajar_flutter/utils/formtextfield.dart';
import 'package:flutter/material.dart';

class ResepApp extends StatefulWidget {
  const ResepApp({super.key});

  @override
  State<ResepApp> createState() => _ResepAppState();
}

class _ResepAppState extends State<ResepApp> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController namaController = TextEditingController();
  final TextEditingController kategoriController = TextEditingController();
  final TextEditingController asalController = TextEditingController();
  final TextEditingController bahanController = TextEditingController();

  List<Resep> daftarResep = [];

  @override
  void initState() {
    super.initState();
    muatData();
  }

  Future<void> muatData() async {
    final data = await DBHelperResep.getAllResep();
    setState(() {
      daftarResep = data;
    });
  }

  Future<void> simpanData() async {
    if (_formKey.currentState!.validate()) {
      final nama = namaController.text;
      final kategori = kategoriController.text; 
      final asal = asalController.text;
      final bahan = bahanController.text;

      await DBHelperResep.insertResep(
        Resep(nama: nama, kategori: kategori, asal: asal, bahan: bahan),
      );
      namaController.clear();
      kategoriController.clear();
      asalController.clear();
      bahanController.clear();
      muatData();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: Text('Resep Makanan')),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                CustomFormTextField(
                  validator:
                      (value) => value!.isEmpty ? 'Nama wajib diisi' : null,
                  controller: namaController,
                  label: 'Nama Masakan',
                ),
                CustomFormTextField(
                  validator:
                      (value) => value!.isEmpty ? 'Kategori wajib diisi' : null,
                  controller: kategoriController,
                  label: 'Kategori',
                ),
                CustomFormTextField(
                  validator:
                      (value) => value!.isEmpty ? 'Asal wajib diisi' : null,
                  controller: asalController,
                  label: 'Asal Masakan',
                ),
                CustomFormTextField(
                  validator:
                      (value) => value!.isEmpty ? 'Bahan wajib diisi' : null,
                  controller: bahanController,
                  label: "Bahan Masakan",
                ),
                SizedBox(height: 16),
                DefaultButton(text: 'Simpan', onPressed: simpanData),
                // ElevatedButton(onPressed: simpanData, child: Text('Simpan')),
                Divider(height: 32),
                Expanded(
                  child: ListView.builder(
                    itemCount: daftarResep.length,
                    itemBuilder: (context, index) {
                      final resep = daftarResep[index];
                      return ListTile(
                        title: Text(resep.nama),
                        subtitle: Text('${resep.kategori} • ${resep.asal}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () async {
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:
                                        (_) => EditResepScreen(resep: resep),
                                  ),
                                );
                                muatData();
                              },
                              icon: Icon(Icons.edit),
                            ),
                            IconButton(
                              icon: Icon(Icons.more_horiz),
                              onPressed:
                                  () => showDialog(
                                    context: context,
                                    builder:
                                        (_) => AlertDialog(
                                          title: Text(resep.nama),
                                          content: SingleChildScrollView(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text('Bahan:\n${resep.bahan}'),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                TextButton(
                                                  onPressed: () async {
                                                    await DBHelperResep.deleteResep(
                                                      resep.id!,
                                                    );
                                                    // ignore: use_build_context_synchronously
                                                    Navigator.pop(context);
                                                    setState(() => muatData());
                                                  },
                                                  child: Text('Hapus'),
                                                ),
                                                TextButton(
                                                  onPressed:
                                                      () => Navigator.pop(
                                                        context,
                                                      ),
                                                  child: Text('Tutup'),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                  ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
