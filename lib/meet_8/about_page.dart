import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Tentang Aplikasi",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 32),
          Text(
            "Aplikasi ini dibuat untuk menampilkan berbagai jenis input form interaktif seperti checkbox, switch, dropdown, date picker, dan time picker.",
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
          SizedBox(height: 20),
          Text(
            "Dibuat oleh: Alfarezhi Mohamad Rasidan",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            "Versi : 1.0",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
