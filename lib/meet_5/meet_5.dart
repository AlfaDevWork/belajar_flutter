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
        centerTitle: true,
        title: Text('Meet 5'),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            like++;
          });
          // ignore: avoid_print
          print(like);
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ignore: sized_box_for_whitespace
          Container(
            height: 80,
            width: 400,
            // color: Colors.grey,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(),
                    onPressed: () {
                      setState(() {
                        nama = !nama;
                      });
                    },
                    child: Text('Tampilkan Nama'),
                  ),
                ),
                nama ? Text('Nama saya: Alfarezhi') : SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: IconButton(
              icon: Icon(Icons.favorite, color: fav ? Colors.red : Colors.grey),
              onPressed: () {
                setState(() {
                  fav = !fav;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  deskripsi = !deskripsi;
                });
              },
              child: Text("Lihat Selengkapnya"),
            ),
          ),
          deskripsi ? Text("test") : SizedBox(),
          Container(
            height: 50,
            width: 100,
            color: Colors.blue,
            child: InkWell(
              onTap: () {
                setState(() {
                  inkwelll = !inkwelll;
                });
                // ignore: avoid_print
                [print('Kotak disentuh')];
              },
              child: Center(child: Text("$inkwelll")),
            ),
          ),
        ],
      ),
    );
  }

  Text likeCount() {
    return Text(like.toString());
  }
}
