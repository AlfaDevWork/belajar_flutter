import 'package:belajar_flutter/tugas_10/konfirmasi.dart';
import 'package:belajar_flutter/utils/button.dart';
import 'package:flutter/material.dart';

class FormulirPage extends StatefulWidget {
  const FormulirPage({super.key});

  @override
  State<FormulirPage> createState() => _FormulirPageState();
}

class _FormulirPageState extends State<FormulirPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: "Nama Lengkap"),
            controller: _nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Wajib diisi";
              }
              return null;
            },
          ),
          SizedBox(height: 12),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(labelText: "Email"),
            controller: _emailController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Wajib diisi";
              } else if (!value.contains('@')) {
                return 'Email tidak valid';
              }
              return null;
            },
          ),
          SizedBox(height: 12),
          TextFormField(
            decoration: InputDecoration(labelText: "Nomor HP"),
            keyboardType: TextInputType.number,
            controller: _numberController,
            validator: (value) {
              return null;
            },
          ),
          SizedBox(height: 12),
          TextFormField(
            controller: _cityController,
            decoration: InputDecoration(labelText: "Kota Domisili"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Wajib diisi";
              }
              return null;
            },
          ),
          TextFormField(
            obscureText: !_passwordVisible,
            controller: _passwordController,
            decoration: InputDecoration(
              labelText: "Password",
              suffixIcon: IconButton(
                icon: Icon(
                  _passwordVisible ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _passwordVisible = !_passwordVisible;
                  });
                },
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Wajib diisi";
              } else if (value.length < 8) {
                return "Password minimal 8 karakter";
              }
              return null;
            },
          ),
          DefaultButton(
            text: 'Daftar',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                dialogSuccess(context);
              }
            },
          ),
        ],
      ),
    );
  }

  Future<dynamic> dialogSuccess(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Berhasil"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [Text("Email anda : ${_emailController.text}")],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Tutup"),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => HalamanKonfirmasi(
                          email: _emailController.text,
                          name: _nameController.text,
                          city: _cityController.text,
                          password: _passwordController.text,
                        ),
                  ),
                );
              },
              child: Text("Lanjut"),
            ),
          ],
        );
      },
    );
  }
}
