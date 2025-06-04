import 'package:belajar_flutter/meet_16/database/db_helper.dart';
import 'package:belajar_flutter/meet_16/register_screen.dart';
import 'package:belajar_flutter/utils/formtextfield.dart';
import 'package:flutter/material.dart';

class LoginScreenApp extends StatefulWidget {
  const LoginScreenApp({super.key});
  static const String id = "/login_screen_app";

  @override
  State<LoginScreenApp> createState() => _LoginScreenAppState();
}

class _LoginScreenAppState extends State<LoginScreenApp> {
  bool viewPassword = false;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.topCenter,
                width: 400,
                height: 289,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                      // ignore: deprecated_member_use
                      Colors.black.withOpacity(0.4),
                      BlendMode.darken,
                    ),
                    image: AssetImage('assets/images/ppkd.jpg'),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: SizedBox(
                    child: Column(
                      children: [
                        Text(
                          'Hallo!',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Please login to get full access from us',
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xB3ffffff),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomTextField(
                      controller: emailController,
                      label: 'Email',
                      hintText: 'John@email.com',
                    ),
                    SizedBox(height: 8),
                    CustomTextField(
                      controller: passwordController,
                      obscureText: !viewPassword,
                      label: 'Password',
                      hintText: '•••••••• ',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            viewPassword = !viewPassword;
                          });
                        },
                        icon: Icon(
                          viewPassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Color(0xffC4C4C4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              buildLoginButton(),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: 35),
                  Image.asset("assets/images/garisKiri.png"),
                  SizedBox(width: 10),
                  Text(
                    'Or continue with',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 10),
                  Image.asset("assets/images/garisKanan.png"),
                ],
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  SizedBox(width: 32),
                  Container(
                    height: 48,
                    width: 88,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff111111),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.elliptical(10, 10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/google.png'),
                    ),
                  ),
                  SizedBox(width: 34),
                  Container(
                    height: 48,
                    width: 88,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff111111),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.elliptical(10, 10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/apple.png'),
                    ),
                  ),
                  SizedBox(width: 34),
                  Container(
                    height: 48,
                    width: 88,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff111111),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(
                            Radius.elliptical(10, 10),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Image.asset('assets/images/twitter.png'),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 25),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RegisterScreenApp.id);
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(color: Color(0xff7D00D0)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLoginButton() {
    return Container(
      width: 330,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
      ),
      child: ElevatedButton(
        onPressed: () async {
          final userData = await DBhelper.login(
            emailController.text,
            passwordController.text,
          );
          if (userData != null) {
            print('data ada ${userData.toJson()}');
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Login succesful')));
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Email atau password salah')),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff7D00D0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
          ),
        ),
        child: Text('Login', style: TextStyle(color: Color(0xffffffff))),
      ),
    );
  }
}
