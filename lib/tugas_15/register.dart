import 'package:belajar_flutter/tugas_15/api/user_api.dart';
import 'package:belajar_flutter/tugas_15/login.dart';
import 'package:belajar_flutter/utils/custom_formtextfield.dart';
import 'package:flutter/material.dart';

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
    setState(() {
      isLoading = true;
    });
    final res = await userService.registerUser(
      email: emailController.text,
      name: nameController.text,
      password: passwordController.text,
    );
    if (res["data"] != null) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Registration Successful!',
            style: TextStyle(color: Color(0xff999EA1)),
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
            style: TextStyle(color: Color(0xff999EA1)),
          ),
          backgroundColor: Colors.red,
        ),
      );
    }
    setState(() {
      isLoading = false;
    });
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
                    child: Text(
                      'Create an Account',
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: Text(
                      "Connect with your friends today!",
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
                    controller: emailController,
                    hintText: 'Please Enter Your Email',
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: Text(
                      'Name',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                  ),
                  CustomFormTextField15(
                    controller: nameController,
                    hintText: 'Please Enter Your Name',
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 27, bottom: 7),
                    child: Text(
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

                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            register();
                          }
                        },
                        child:
                            isLoading
                                ? CircularProgressIndicator(color: Colors.white)
                                : Text(
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
                        "Already have an account?",
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
