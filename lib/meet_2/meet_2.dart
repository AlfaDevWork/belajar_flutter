import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeetDua extends StatelessWidget {
  const MeetDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Profil Lengkap', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/download.jpeg'),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Alfarezhi Mohamad Rasidan',
              style: GoogleFonts.poppins(fontSize: 22),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                border: Border.all(),
              ),
              child: Row(
                children: [
                SizedBox(
                // height: 10,
                width: 35, child: Icon(Icons.email, color: Colors.white),),
                Text('alfarezhi.dev@gmail.com', style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
