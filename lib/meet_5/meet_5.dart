import 'package:flutter/material.dart';

class MeetLima extends StatefulWidget {
  const MeetLima({super.key});

  @override
  State<MeetLima> createState() => _MeetLimastate();
}

class _MeetLimastate extends State<MeetLima> {
  bool nama = false;
  bool fav = false;
  bool deskripsi = false;
  bool inkwelll = false;
  int like = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              'Instagram',
              style: TextStyle(color: Colors.white, fontFamily: 'Lobster'),
            ),
            Icon(Icons.keyboard_arrow_down, color: Colors.white),
            Spacer(),
            Icon(Icons.favorite_border, color: Colors.white),
            SizedBox(width: 15),
            Icon(Icons.message_outlined, color: Colors.white),
          ],
        ),
        backgroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          setState(() {
            like++;
          });
          // ignore: avoid_print
          // print(like);
        },
        child: Icon(Icons.favorite, color: Colors.red),
      ),
      body: Column(
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
                        padding: const EdgeInsets.only(right: 100),
                        child:
                            nama
                                ? Text(
                                  'alfarezhi',
                                  style: TextStyle(color: Colors.white),
                                )
                                : Text(
                                  '*********',
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
                Icon(Icons.more_vert, color: Colors.white),
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
                    nama
                        ? Text(
                          'alfarezhi',
                          style: TextStyle(color: Colors.white),
                        )
                        : Text(
                          '*********',
                          style: TextStyle(color: Colors.white),
                        ),
                    // Text('alfarezhi', style: TextStyle(color: Colors.white)),
                    buildTextButton(),
                  ],
                ),
              ],
            ),
          ),
          Container(color: Colors.white, height: 2),
          Container(
            width: double.infinity,
            height: 40,
            color: Colors.black,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.settings, color: Colors.white),
                    ),
                    Text(
                      'Developer Mode',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Colors.black,
            height: 182,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [buildGestureDetector(), buildElevatedButton()],
            ),
          ),
        ],
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
