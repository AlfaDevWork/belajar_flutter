// ignore_for_file: avoid_print

// ignore: unused_import
import 'package:belajar_flutter/meet_4/meet_4.dart';
import 'package:flutter/material.dart';

class HomeScreen15 extends StatefulWidget {
  const HomeScreen15({super.key});

  @override
  State<HomeScreen15> createState() => _HomeScreen15state();
}

class _HomeScreen15state extends State<HomeScreen15> {
  bool nama = false;
  bool fav = false;
  bool deskripsi = false;
  bool inkwelll = false;
  int like = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              width: 400,
              height: 55,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage('assets/images/Ren.jpeg'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 95, left: 5),
                          child: Text(
                            'alfarezhi',
                            style: TextStyle(color: Colors.white),
                          ),
                          // Text(
                          //   'alfarezhi',
                          //   style: TextStyle(color: Colors.white),
                          // ),
                        ),
                        Text(
                          'alfarezhi • Original audio',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ),
            buildInkWell(),

            //
            Container(
              color: Colors.black,
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      buildIconButton(),
                      SizedBox(width: 2),
                      Icon(Icons.chat_bubble_outline, color: Colors.white),
                      SizedBox(width: 13),
                      Icon(Icons.send_outlined, color: Colors.white),
                    ],
                  ),
                  Icon(Icons.bookmark_border, color: Colors.white),
                ],
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.black,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 23),
                      likeCount(),
                      SizedBox(width: 5),
                      Text(
                        'likes',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(width: 23),
                      Text('alfarezhi', style: TextStyle(color: Colors.white)),
                      buildTextButton(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildGestureDetector() {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Container(
          height: 35,
          width: 170,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24)),
            border: Border.all(),
          ),
          child: Center(
            child: Text(
              'Tekan aku',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      onTap: () {
        print('Ditekan sekali');
      },
      onDoubleTap: () {
        print('Ditekan dua kali');
      },
      onLongPress: () {
        print('Tahan lama');
      },
    );
  }

  Stack buildInkWell() {
    return Stack(
      children: [
        Container(
          height: 320,
          width: 400,
          color: Colors.blue,
          child: InkWell(
            onTap: () {
              setState(() {
                inkwelll = !inkwelll;
              });
              // ignore: duplicate_ignore
              // ignore: avoid_print
              [print('Kotak disentuh')];
            },
            child: Image.asset(
              'assets/images/LaBorde.png',
              fit: BoxFit.fill,
              height: 120,
              width: 120,
            ),
            // Center(child: Text("$inkwelll")),
          ),
        ),
        inkwelll
            ? Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Text(
                      'Wallpaper',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
            : SizedBox(),
      ],
    );
  }

  Padding buildTextButton() {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              setState(() {
                deskripsi = !deskripsi;
              });
              // print(Text('Wallpaper bagus'));
            },
            child: Text(
              deskripsi
                  ? "Wallpaper bagus banget banget"
                  : "Wallpaper bagus...More",
              style: TextStyle(color: Colors.white),
            ),
          ),
          // deskripsi
          //     ? Text(
          //       'Wallpaper bagus banget ',
          //       style: TextStyle(color: Colors.white),
          //     )
          //     : Text('test'),
        ],
      ),
    );
  }

  IconButton buildIconButton() {
    return IconButton(
      icon: Icon(
        fav ? Icons.favorite : Icons.favorite_border,
        color: fav ? Colors.red : Colors.white,
      ),
      // Icon(
      //   Icons.favorite_border,
      //   color: fav ? Colors.red : Colors.grey,
      // ),
      onPressed: () {
        setState(() {
          fav = !fav;
        });
      },
    );
  }

  Container buildElevatedButton() {
    return Container(
      width: 400,
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        // color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      // color: Colors.grey,
      child: Row(
        children: [
          SizedBox(
            width: 170,
            height: 35,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  nama = !nama;
                });
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: Text(
                'Tampilkan Nama',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          nama
              ? Text(
                'Nama saya: Alfarezhi',
                style: TextStyle(color: Colors.white),
              )
              : SizedBox(),
        ],
      ),
    );
  }

  Text likeCount() {
    return Text(
      like.toString(),
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    );
  }
}
