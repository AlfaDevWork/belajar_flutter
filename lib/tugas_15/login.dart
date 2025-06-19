import 'package:belajar_flutter/utils/customformtextfield.dart';
import 'package:flutter/material.dart';

class LoginScreen15 extends StatefulWidget {
  const LoginScreen15({super.key});

  @override
  State<LoginScreen15> createState() => _LoginScreen15State();
}

class _LoginScreen15State extends State<LoginScreen15> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 20),
            CustomFormTextField15(
              controller: emailController,
              hintText: 'Please Enter Your Email',
              
            ),
          ],
        ),
      ),
    );
  }
}
