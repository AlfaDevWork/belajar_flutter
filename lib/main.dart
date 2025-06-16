// ignore: unused_import
import 'package:belajar_flutter/latihan/latihan.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_1/meet_1.dart';
import 'package:belajar_flutter/meet_16/login_screen.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_2/meet_2.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_3/meet_3.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_4/meet_4.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_5/meet_5.dart';
// ignore: unused_import
import 'package:belajar_flutter/meet_8/meet_8.dart';
// ignore: unused_import
import 'package:belajar_flutter/tugas_9/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const SplashScreen(),
      //   LoginScreenApp.id: (context) => LoginScreenApp(),
      //   RegisterScreenApp.id: (context) => RegisterScreenApp(),
      //   HomeSweet.id: (context) => const HomeSweet(),
      //   FormulirPage.id: (context) => const FormulirPage(),
      // },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: LoginScreenApp(),
    );
  }
}
