import 'package:belajar_flutter/meet_7/meet_7.dart';
import 'package:belajar_flutter/meet_8/about_page.dart';
import 'package:flutter/material.dart';

class MeetDelapan extends StatefulWidget {
  const MeetDelapan({super.key});

  @override
  State<MeetDelapan> createState() => _MeetDelapanState();
}

class _MeetDelapanState extends State<MeetDelapan> {
  final List<Widget> _screen = [MeetTujuh(), AboutPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.info_outline),
            label: 'About',
          ),
        ],
      ),
      body: _screen[currentIndex],
    );
  }
}
