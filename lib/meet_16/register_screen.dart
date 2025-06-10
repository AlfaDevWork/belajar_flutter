import 'package:belajar_flutter/meet_16/database/db_helper.dart';
import 'package:belajar_flutter/meet_16/model/user_model.dart';
import 'package:belajar_flutter/utils/formtextfield.dart';
import 'package:flutter/material.dart';

class RegisterScreenApp extends StatefulWidget {
  const RegisterScreenApp({super.key});
  static const String id = "/register_screen_app";

  @override
  State<RegisterScreenApp> createState() => _RegisterScreenAppState();
}

class _RegisterScreenAppState extends State<RegisterScreenApp> {
  bool viewPassword = false;
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
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
                          'Please register to get full access from us',
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
                    CustomFormTextField(
                      controller: nameController,
                      label: 'Name',
                      hintText: 'Nama',
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? "Wajib diisi"
                                  : null,
                    ),
                    SizedBox(height: 8),
                    CustomFormTextField(
                      controller: emailController,
                      label: 'Email Address',
                      hintText: 'Email',
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? "Wajib diisi"
                                  : null,
                    ),
                    SizedBox(height: 8),
                    CustomFormTextField(
                      controller: usernameController,
                      label: 'Username',
                      hintText: 'Alfarezhi Mohamad Rasidan',
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? "Wajib diisi"
                                  : null,
                    ),
                    SizedBox(height: 8),
                    CustomFormTextField(
                      controller: phoneController,
                      label: 'Phone Number',
                      hintText: 'Phone',
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? "Wajib diisi"
                                  : null,
                    ),
                    SizedBox(height: 8),
                    CustomFormTextField(
                      controller: passwordController,
                      label: 'Password',
                      hintText: '•••••••••••••',
                      obscureText: !viewPassword,
                      validator:
                          (value) =>
                              value == null || value.isEmpty
                                  ? "Wajib diisi"
                                  : null,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            viewPassword = !viewPassword;
                          });
                        },
                        icon: Icon(
                          viewPassword
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Color(0xffC4C4C4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              buildLoginButton(),
              SizedBox(height: 20),
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
              SizedBox(height: 20),
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
                      "Have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign In',
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
        onPressed: () {
          if (_formkey.currentState!.validate()) {
            print("Name: ${nameController.text}");
            print("Email: ${emailController.text}");
            print("Username: ${usernameController.text}");
            print("Phone: ${phoneController.text}");
            print("Password: ${passwordController.text}");
            DBhelper.registerUser(
              data: UserModel(
                email: emailController.text,
                password: passwordController.text,
                name: nameController.text,
                phone: phoneController.text,
                username: usernameController.text,
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Registration Succesful!"),
                backgroundColor: Color(0xff7D00D0),
              ),
            );
            Navigator.pop(context);
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff7D00D0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.elliptical(4, 4)),
          ),
        ),
        child: Text('Register', style: TextStyle(color: Color(0xffffffff))),
      ),
    );
  }
}
