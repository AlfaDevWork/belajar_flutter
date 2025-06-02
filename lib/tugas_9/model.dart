import 'package:belajar_flutter/constant/app_image.dart';
import 'package:belajar_flutter/tugas_9/model/produk_model.dart';
import 'package:flutter/material.dart';

class ModelClass extends StatefulWidget {
  const ModelClass({super.key});

  @override
  State<ModelClass> createState() => _ModelClassState();
}

class _ModelClassState extends State<ModelClass> {
  final List<ProdukModel> dataProduk = [
    ProdukModel(
      namaProduk: 'Apel',
      gambarProduk: AppImage.apel,
      deskripsiProduk: 'Manis, renyah, kaya vitamin C.',
    ),
    ProdukModel(
      namaProduk: 'Pisang',
      gambarProduk: AppImage.pisang,
      deskripsiProduk: 'Lembut, manis, sumber energi.',
    ),
    ProdukModel(
      namaProduk: 'Jeruk',
      gambarProduk: AppImage.jeruk,
      deskripsiProduk: 'Segar, asam-manis, tinggi vitamin C.',
    ),
    ProdukModel(
      namaProduk: 'Mangga',
      gambarProduk: AppImage.mangga,
      deskripsiProduk: 'Legit, harum, buah tropis favorit.',
    ),
    ProdukModel(
      namaProduk: 'Anggur',
      gambarProduk: AppImage.anggur,
      deskripsiProduk: 'Kecil, manis, cocok untuk camilan.',
    ),
    ProdukModel(
      namaProduk: 'Semangka',
      gambarProduk: AppImage.semangka,
      deskripsiProduk: 'Segar, berair, cocok saat panas.',
    ),
    ProdukModel(
      namaProduk: 'Melon',
      gambarProduk: AppImage.melon,
      deskripsiProduk: 'Manis, lembut, kaya air.',
    ),
    ProdukModel(
      namaProduk: 'Nanas',
      gambarProduk: AppImage.nanas,
      deskripsiProduk: 'Asam-manis, segar, berserat.',
    ),
    ProdukModel(
      namaProduk: 'Stroberi',
      gambarProduk: AppImage.stroberi,
      deskripsiProduk: 'Asam-manis, harum, disukai banyak orang.',
    ),
    ProdukModel(
      namaProduk: 'Pepaya',
      gambarProduk: AppImage.pepaya,
      deskripsiProduk: 'Lembut, manis, baik untuk pencernaan.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('Model')),
      body: ListView.builder(
        itemCount: dataProduk.length,
        itemBuilder: (BuildContext context, int index) {
          final product = dataProduk[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
              ),
              child: ListTile(
                // Border.all(color: Colors.black),
                leading: Image.asset(
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                  product.gambarProduk,
                ),
                title: Text(product.namaProduk),
                subtitle: Text(product.deskripsiProduk),
              ),
            ),
          );
        },
      ),
    );
  }
}
