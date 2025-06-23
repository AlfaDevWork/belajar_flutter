import 'package:belajar_flutter/tugas_15/home.dart';
import 'package:belajar_flutter/tugas_15/profile.dart';
import 'package:flutter/material.dart';

class DrawerScreen15 extends StatefulWidget {
  const DrawerScreen15({super.key});

  @override
  State<DrawerScreen15> createState() => _DrawerScreen15State();
}

class _DrawerScreen15State extends State<DrawerScreen15> {
  final List<Widget> _screen = [HomeScreen15(), ProfileScreen15()];
  final List<String> title = ["Beranda", "Profil"];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(
        title: Text(
          title[currentIndex],
          style: TextStyle(fontFamily: 'Lobster'),
        ),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: currentIndex == 0 ? Colors.deepPurple : null,
                  ),
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 0;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: currentIndex == 1 ? Colors.deepPurple : null,
                  ),
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(title: Text('Keluar'), onTap: () {}),
            ],
          ),
        ),
      ),
      body: _screen[currentIndex],
    );
  }
}
