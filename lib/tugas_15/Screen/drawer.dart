import 'package:belajar_flutter/tugas_15/Screen/home.dart';
import 'package:belajar_flutter/tugas_15/Screen/login.dart';
import 'package:belajar_flutter/tugas_15/Screen/profile.dart';
import 'package:flutter/material.dart';

class DrawerScreen15 extends StatefulWidget {
  const DrawerScreen15({super.key});

  @override
  State<DrawerScreen15> createState() => _DrawerScreen15State();
}

class _DrawerScreen15State extends State<DrawerScreen15> {
  final List<Widget> _screen = [HomeScreen15(), ProfileScreen15()];
  final List<String> title = ["Instagram", "Profil"];
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
        actions:
            currentIndex == 1
                ? [
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder:
                            (context) => AlertDialog(
                              title: Text('Konfirmasi'),
                              content: Text(
                                'Apakah kamu yakin ingin menghapus profil?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: Text('Batal'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    // TODO: Tambahkan aksi hapus profil di sini
                                    Navigator.pop(context);
                                  },
                                  child: Text('Hapus'),
                                ),
                              ],
                            ),
                      );
                    },
                  ),
                ]
                : null,
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                tileColor: currentIndex == 0 ? Colors.deepPurple : null,
                title: Text(
                  'Home',
                  style: TextStyle(
                    color: currentIndex == 0 ? Colors.white : Colors.black,
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
                tileColor: currentIndex == 1 ? Colors.deepPurple : null,
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: currentIndex == 1 ? Colors.white : Colors.black,
                  ),
                ),
                onTap: () {
                  setState(() {
                    currentIndex = 1;
                    Navigator.pop(context);
                  });
                },
              ),
              ListTile(
                title: Text('Keluar'),
                onTap:
                    () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => LoginScreen15()),
                      (route) => false,
                    ),
              ),
            ],
          ),
        ),
      ),
      body: _screen[currentIndex],
    );
  }
}
