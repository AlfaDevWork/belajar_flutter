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
  // final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  // bool _passwordVisible = false;
  bool isFormValid = false;

  void validateForm() {
    final isValid =
        _nameController.text.isNotEmpty &&
        _emailController.text.contains('@') &&
        _cityController.text.isNotEmpty;

    if (isFormValid != isValid) {
      setState(() {
        isFormValid = isValid;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Formulir Pendaftaran Kelas Flutter',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                labelText: "Nama Lengkap",
              ),
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Wajib diisi";
                }
                return null;
              },
              onChanged: (_) => validateForm(),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
            child: TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                labelText: "Email",
              ),
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Wajib diisi";
                } else if (!value.contains('@')) {
                  return 'Format email tidak valid';
                } else if (!value.contains('.')) {
                  return 'Format email tidak valid';
                }
                return null;
              },
              onChanged: (_) => validateForm(),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, bottom: 4),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                labelText: "Nomor HP",
              ),
              keyboardType: TextInputType.number,
              controller: _numberController,
              validator: (value) {
                return null;
              },
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: TextFormField(
              controller: _cityController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                ),
                labelText: "Kota Domisili",
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Wajib diisi";
                }
                return null;
              },
              onChanged: (_) => validateForm(),
            ),
          ),
          // TextFormField(
          //   obscureText: !_passwordVisible,
          //   controller: _passwordController,
          //   decoration: InputDecoration(
          //     labelText: "Password",
          //     suffixIcon: IconButton(
          //       icon: Icon(
          //         _passwordVisible ? Icons.visibility_off : Icons.visibility,
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           _passwordVisible = !_passwordVisible;
          //         });
          //       },
          //     ),
          //   ),
          //   validator: (value) {
          //     if (value == null || value.isEmpty) {
          //       return "Wajib diisi";
          //     } else if (value.length < 8) {
          //       return "Password minimal 8 karakter";
          //     }
          //     return null;
          //   },
          // ),
          SizedBox(height: 18),
          DefaultButton(
            text: 'Daftar',
            onPressed:
                isFormValid
                    ? () {
                      if (_formKey.currentState!.validate()) {
                        dialogSuccess(context);
                      }
                    }
                    : null,
            backgroundColor:
                // _formKey.currentState?.validate() == false
                isFormValid ? Colors.white : Colors.grey,
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
            children: [
              Text("Nama Anda: ${_nameController.text}"),
              Text("Email Anda: ${_emailController.text}"),
              Text("Nomor HP: ${_numberController.text}"),
              Text("Kota Domisili: ${_cityController.text}"),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Batal"),
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
                          // password: _passwordController.text,
                        ),
                  ),
                );
              },
              child: Text("Lanjutkan"),
            ),
          ],
        );
      },
    );
  }
}
