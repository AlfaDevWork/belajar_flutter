import 'package:flutter/material.dart';

class ListMapWidget extends StatefulWidget {
  const ListMapWidget({super.key});

  @override
  State<ListMapWidget> createState() => _ListMapWidgetState();
}

class _ListMapWidgetState extends State<ListMapWidget> {
  final List<Map<String, dynamic>> kategori = [
    {'nama': 'Buah-buahan', 'icon': Icons.apple},
    {'nama': 'Sayuran', 'icon': Icons.eco},
    {'nama': 'Elektronik', 'icon': Icons.devices},
    {'nama': 'Pakaian Pria', 'icon': Icons.male},
    {'nama': 'Pakaian Wanita', 'icon': Icons.female},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text('List Map')),
      body: ListView.builder(
        itemCount: kategori.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Icon(kategori[index]['icon']),
            title: Text('${kategori[index]['nama']}'),
          );
        },
      ),
    );
  }
}
