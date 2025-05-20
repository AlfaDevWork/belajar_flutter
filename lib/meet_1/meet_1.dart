import 'package:flutter/material.dart';

class MeetSatu extends StatelessWidget {
  const MeetSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Row(
          children: [
            FlutterLogo(size: 30),
            SizedBox(width: 8),
            Text(style: TextStyle(color: Colors.white), 'Profil Saya'),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(
                    "assets/download.jpeg",
                  ), //mau pakai pas foto tapi tidak ketem
                  width: 125,
                  height: 125,
                ),
              ),
              Padding(padding: EdgeInsets.all(2.0)),
              // ignore: sized_box_for_whitespace
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(
                        'Alfarezhi Mohamad Rasidan',
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.location_on,
                            color: Colors.redAccent,
                            size: 20,
                          ),
                          SizedBox(width: 4),
                          Expanded(
                            child: Text(
                              'Kemayoran, Jakarta Pusat',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.blue,
                              ),
                              overflow: TextOverflow.visible,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'A vocational high school graduate currently enrolled in the Mobile Programming program at PPKD. Starting from scratch with no prior programming background, driven by a strong motivation to pursue a career as a remote developer.',
                  style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                ),
              ],
            ),
          ),
          Expanded(child: Container(color: Colors.white)),
          Expanded(child: Container(color: Colors.grey)),
          Expanded(child: Container(color: Colors.black)),
        ],
      ),
    );
  }
}
