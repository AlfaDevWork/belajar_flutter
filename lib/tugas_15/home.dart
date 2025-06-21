import 'package:flutter/material.dart';

class HomeScreen15 extends StatefulWidget {
  const HomeScreen15({super.key});

  @override
  State<HomeScreen15> createState() => _HomeScreen15State();
}

class _HomeScreen15State extends State<HomeScreen15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(title: Text('Beranda')),
      drawer: Drawer(
        child: Column(
          children: [ListTile(title: Text('Keluar'), onTap: () {})],
        ),
      ),
      body: Column(),
    );
  }
}
