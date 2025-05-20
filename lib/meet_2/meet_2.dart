import 'package:flutter/material.dart';

class MeetDua extends StatelessWidget {
  const MeetDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue , title: Text('MeetDua'),),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(style: TextStyle(fontSize: 24), 'PPKD B 2'),
            ],
          )
        ],
      ),
    );
  }
}