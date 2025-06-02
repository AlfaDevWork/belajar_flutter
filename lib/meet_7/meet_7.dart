import 'dart:ffi';

import 'package:belajar_flutter/meet_7/checkbox.dart';
import 'package:belajar_flutter/meet_7/date_picker.dart';
import 'package:belajar_flutter/meet_7/dropdown.dart';
import 'package:belajar_flutter/meet_7/switch.dart';
import 'package:belajar_flutter/meet_7/time_picker.dart';
import 'package:flutter/material.dart';

class MeetTujuh extends StatefulWidget {
  const MeetTujuh({super.key});

  @override
  State<MeetTujuh> createState() => _MeetTujuhState();
}

class _MeetTujuhState extends State<MeetTujuh> {
  final List<Widget> _screen = [
    PageCheckBox(),
    PageSwitch(),
    PageDropdown(),
    PageDatePicker(),
    PageTimePicker(),
  ];
  final List<String> title = [
    "Syarat & Ketentuan",
    "Atur Mode Gelap",
    "Pilih Kategori Produk",
    "Pilih Tanggal Lahir",
    "Atur Pengingat",
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title[currentIndex]),
        backgroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            SizedBox(
              height: 240,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Colors.black,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/Ren.jpeg'),
                        radius: 50,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Alfarezhi Mohamad Rasidan',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.check,
                color: currentIndex == 0 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Syarat & Ketentuan',
                style: TextStyle(color: currentIndex == 0 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 0;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.toggle_on,
                color: currentIndex == 1 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Mode Gelap',
                style: TextStyle(color: currentIndex == 1 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.category_sharp,
                color: currentIndex == 2 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Pilih Kategori Produk',
                style: TextStyle(color: currentIndex == 2 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 2;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_month,
                color: currentIndex == 3 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Pilih Tanggal Lahir',
                style: TextStyle(color: currentIndex == 3 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 3;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.alarm,
                color: currentIndex == 4 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Atur Pengingat',
                style: TextStyle(color: currentIndex == 4 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 4;
                  Navigator.pop(context);
                });
              },
            ),
          ],
        ),
      ),
      body: _screen[currentIndex],
    );
  }
}
