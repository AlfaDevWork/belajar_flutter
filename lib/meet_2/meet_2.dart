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
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                    width: 35,
                    child: Icon(Icons.email_rounded, color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    'alfarezhi.dev@gmail.com',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                    width: 35,
                    child: Icon(Icons.phone, color: Colors.white),
                  ),
                  Spacer(),
                  Text('0812-3456-7890', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      border: Border.all()
                    ),
                    child: SizedBox(
                      // width: 15,
                      child: Center(
                        child: Text(
                          'Postingan',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      border: Border.all()
                    ),
                    child: SizedBox(
                      // width: 15,
                      child: Center(
                        child: Text(
                          'Followers',
                          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
