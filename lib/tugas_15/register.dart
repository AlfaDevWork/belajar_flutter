import 'package:belajar_flutter/utils/custom_button.dart';
import 'package:belajar_flutter/utils/custom_formtextfield.dart';
import 'package:flutter/material.dart';

class RegisterScreen15 extends StatefulWidget {
  const RegisterScreen15({super.key});

  @override
  State<RegisterScreen15> createState() => _RegisterScreen15State();
}

class _RegisterScreen15State extends State<RegisterScreen15> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 29, top: 62),
                  child: Text(
                    'Hi, Welcome Back!',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 29),
                  child: Text(
                    "Hello again, you've been missed!",
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
                    ),
                  ),
                ),
                SizedBox(height: 32),
                DefaultButton15(
                  text: 'Register',
                  backgroundColor: Color(0xff4E0189),
                  textColor: Color(0xffFFFFFF),
                ),
                SizedBox(height: 20),
                Divider(indent: 32, endIndent: 32),
                SizedBox(height: 347),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
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
    );
  }
}
