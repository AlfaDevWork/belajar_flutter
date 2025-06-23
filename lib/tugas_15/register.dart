import 'package:belajar_flutter/tugas_15/api/user_api.dart';
import 'package:belajar_flutter/tugas_15/login.dart';
import 'package:belajar_flutter/tugas_15/model/register/register_response.dart';
import 'package:belajar_flutter/utils/custom_formtextfield.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class RegisterScreen15 extends StatefulWidget {
  const RegisterScreen15({super.key});

  @override
  State<RegisterScreen15> createState() => _RegisterScreen15State();
}

class _RegisterScreen15State extends State<RegisterScreen15> {
  final UserService userService = UserService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();

  void register() async {
    final res = await userService.registerUser(
      email: emailController.text,
      name: nameController.text,
      password: passwordController.text,
    );
    if (res["data"] != null) {
      print('User: ${res['data']['user']}');
      print('Token: ${res['data']['token']}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Pendaftaran Berhasil!',
            style: TextStyle(color: Color(0xffffffff)),
          ),
          backgroundColor: Colors.deepPurple,
        ),
      );
      Navigator.pop(context);
    } else if (res["errors"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Maaf, ${res["message"]}',
            style: TextStyle(color: Color(0xffffffff)),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: GestureDetector(
        onTap: FocusScope.of(context).unfocus,
        child: Scaffold(
          backgroundColor: Color(0xffF5F5F5),
          resizeToAvoidBottomInset: true,
          body: SafeArea(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 29, top: 62),
                    child: Text('Buat Akun', style: TextStyle(fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: Text(
                      "Bergabunglah dengan komunitas kami!",
                      style: TextStyle(fontSize: 14, color: Color(0xff999EA1)),
                    ),
                  ),
                  SizedBox(height: 52),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: Text(
                      'Email',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  // SizedBox(height: 20),
                  CustomFormTextField15(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    hintText: 'Masukkan Email Anda',
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: Text(
                      'Nama',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  CustomFormTextField15(
                    controller: nameController,
                    hintText: 'Masukkan Nama Anda',
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: Text(
                      'Kata Sandi',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  CustomFormTextField15(
                    controller: passwordController,
                    obscureText: !isVisible,
                    hintText: 'Masukkan Kata Sandi Anda',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility,
                        size: 20,
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 27),
                    child: SizedBox(
                      width: 359,
                      height: 41,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shadowColor: Colors.black,
                          backgroundColor: Colors.deepPurple,
                          disabledBackgroundColor: Colors.deepPurple,
                          shape: RoundedRectangleBorder(
                            side: BorderSide.none,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          elevation: 0,
                        ),

                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            register();
                          }
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 225),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun?",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff999EA1),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => LoginScreen15(),
                              ),
                            );
                          });
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.deepPurple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
