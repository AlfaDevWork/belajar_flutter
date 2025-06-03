import 'package:belajar_flutter/helper/preference.dart';
import 'package:belajar_flutter/tugas_9/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void changePage() {
    Future.delayed(Duration(seconds: 2), () async {
      bool isLogin = await PreferenceHandler.getLogin();
      if (isLogin) {
        return Navigator.pushNamedAndRemoveUntil(
          context,
          HomeSweet.id,
          (Route) => false,
        );
      } else {
        Navigator.pushNamedAndRemoveUntil(context, '/login', (Route) => false);
      }
    });
  }

  @override
  void initState() {
    changePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text(
              'WELCOME',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Spacer(),
            SafeArea(child: Text('V 1.0.0', style: TextStyle(fontSize: 10))),
          ],
        ),
      ),
    );
  }
}
