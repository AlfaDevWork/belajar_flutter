import 'package:flutter/material.dart';

class HalamanKonfirmasi extends StatelessWidget {
  const HalamanKonfirmasi({
    super.key,
    required this.email,
    required this.name,
    required this.city,
    // required this.password,
  });
  final String email;
  final String name;
  final String city;
  // final String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Konfirmasi Pendaftaran"), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          "Terima kasih, $name dari $city telah mendaftar.",

          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
    );
  }
}
