import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey, 
        title: Text('Profil Saya')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nama: Alfarezhi Mohamad Rasidan',
            style: TextStyle(fontSize: 24),
          ),
          Row(children: [Icon(Icons.location_on, color: Colors.red,), 
          Text('Jakarta Pusat',
          style: TextStyle(fontSize: 20),
          ), ]),
          Text(
            'Seorang pelajar yang sedang belajar flutter',
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
