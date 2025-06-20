import 'package:belajar_flutter/tugas_15/api/user_api.dart';
import 'package:belajar_flutter/tugas_15/home.dart';
import 'package:belajar_flutter/tugas_15/register.dart';
import 'package:belajar_flutter/utils/custom_formtextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen15 extends StatefulWidget {
  const LoginScreen15({super.key});

  @override
  State<LoginScreen15> createState() => _LoginScreen15State();
}

class _LoginScreen15State extends State<LoginScreen15> {
  final UserService userService = UserService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = false;
  bool isLoading = false;
  final _formkey = GlobalKey<FormState>();

  void login() async {
    setState(() {
      isLoading = true;
    });
    final res = await userService.loginUser(
      email: emailController.text,
      password: passwordController.text,
    );
    if (res["data"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Login Successful!',
            style: TextStyle(color: Color(0xff999EA1)),
          ),
          backgroundColor: Colors.deepPurple,
        ),
      );
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen15()),
        (route) => false,
      );
    } else if (res["errors"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Maaf, ${res["message"]}',
            style: TextStyle(color: Color(0xff999EA1)),
          ),
          backgroundColor: Colors.red,
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text('${res["message"]}'),
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
                    child: const Text(
                      'Hi, Welcome Back!',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: const Text(
                      "Hello again, you've been missed!",
                      style: TextStyle(fontSize: 14, color: Color(0xff999EA1)),
                    ),
                  ),
                  SizedBox(height: 52),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: const Text(
                      'Email',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  // SizedBox(height: 20),
                  CustomFormTextField15(
                    controller: emailController,
                    hintText: 'Please Enter Your Email',
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: const Text(
                      'Password',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  CustomFormTextField15(
                    controller: passwordController,
                    obscureText: !isVisible,
                    hintText: 'Please Enter Your Password',
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

                        onPressed: () async {
                          login();
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(color: Color(0xffFFFFFF)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(height: 300),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
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
                                builder: (_) => RegisterScreen15(),
                              ),
                            );
                          });
                        },
                        child: Text(
                          'Sign Up',
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
