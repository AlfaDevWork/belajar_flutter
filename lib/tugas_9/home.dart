import 'package:belajar_flutter/meet_7/checkbox.dart';
import 'package:belajar_flutter/meet_7/date_picker.dart';
import 'package:belajar_flutter/meet_7/dropdown.dart';
import 'package:belajar_flutter/meet_7/switch.dart';
import 'package:belajar_flutter/meet_7/time_picker.dart';
import 'package:belajar_flutter/tugas_10/formulir.dart';
import 'package:belajar_flutter/tugas_9/list.dart';
import 'package:belajar_flutter/tugas_9/list_map.dart';
import 'package:belajar_flutter/tugas_9/model.dart';
import 'package:flutter/material.dart';

class HomeSweet extends StatefulWidget {
  const HomeSweet({super.key});

  @override
  State<HomeSweet> createState() => _HomeSweetState();
}

class _HomeSweetState extends State<HomeSweet> {
  final List<Widget> _screen = [
    PageCheckBox(),
    PageSwitch(),
    PageDropdown(),
    PageDatePicker(),
    PageTimePicker(),
    ListWidget(),
    ListMapWidget(),
    ModelClass(),
    FormulirPage(),
  ];
  final List<String> title = [
    "Syarat & Ketentuan",
    "Atur Mode Gelap",
    "Pilih Kategori Produk",
    "Pilih Tanggal Lahir",
    "Atur Pengingat",
    "List Widget",
    "ListMap Widget",
    "Class Model",
    "Formulir",
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
            ListTile(
              leading: Icon(
                Icons.format_list_bulleted,
                color: currentIndex == 5 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Widget List',
                style: TextStyle(color: currentIndex == 5 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 5;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.map,
                color: currentIndex == 6 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Widget ListMap',
                style: TextStyle(color: currentIndex == 6 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 6;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.data_object,
                color: currentIndex == 7 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Class Model',
                style: TextStyle(color: currentIndex == 7 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 7;
                  Navigator.pop(context);
                });
              },
            ),
            ListTile(
              leading: Icon(
                Icons.data_object,
                color: currentIndex == 8 ? Colors.lightBlue : null,
              ),
              title: Text(
                'Formulir',
                style: TextStyle(color: currentIndex == 8 ? Colors.blue : null),
              ),
              onTap: () {
                setState(() {
                  currentIndex = 8;
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
