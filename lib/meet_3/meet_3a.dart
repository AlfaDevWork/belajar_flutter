import 'package:flutter/material.dart';

class MeetTigaA extends StatelessWidget {
  const MeetTigaA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('Meet Tiga A')),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              buildstack(),
              buildstack(),
              buildstack(),
              buildstack(),
              buildstack(),
              buildstack(),
            ],
          ),
        ),
      ),
    );
  }

  Stack buildstack() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow,
          ),
        ),
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.red),
        ),
        Container(
          height: 200,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
