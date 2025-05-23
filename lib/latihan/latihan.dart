import 'package:flutter/material.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Row(
          children: [
            Text(
              'Ren Amamiya',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
              padding: EdgeInsets.zero,
              constraints: BoxConstraints(),
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.add_box_outlined, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100,
                  width: 100,

                  decoration: BoxDecoration(
                    color: Colors.blue[200],
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(
                        'assets/images/download.jpeg',
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text('2', style: TextStyle(fontSize: 15)),
                        Text('posts', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text('26', style: TextStyle(fontSize: 15)),
                        Text('followers', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Text('59', style: TextStyle(fontSize: 15)),
                        Text('following', style: TextStyle(fontSize: 15)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text('Alfa'),
        ],
      ),
    );
  }
}
