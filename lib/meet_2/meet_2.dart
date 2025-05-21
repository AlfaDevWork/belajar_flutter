import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeetDua extends StatelessWidget {
  const MeetDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        title: Text('Profil Lengkap', style: GoogleFonts.poppins(color: Colors.white)),
        backgroundColor: Color(0xFF1E3A8A),
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
          SizedBox(height: 1),
          Center(
            child: Text(
              'Alfarezhi Mohamad Rasidan',
              style: GoogleFonts.poppins(fontSize: 22, color: Color(0xFF111827),
              fontWeight: FontWeight.bold),
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
                    style: GoogleFonts.poppins(color: Colors.white),
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
                  Text('0812-3456-7890', style: GoogleFonts.poppins(color: Colors.white)),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12, right: 15, top: 10),
            child: Row(
              children: [
                SizedBox(height: 20),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      border: Border.all(),
                    ),
                    child: SizedBox(
                      // width: 15,
                      child: Center(
                        child: Text(
                          'Postingan: 64',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    decoration: BoxDecoration(
                      color: Colors.blue[800],
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      border: Border.all(),
                    ),
                    child: SizedBox(
                      // width: 15,
                      child: Center(
                        child: Text(
                          'Followers: 123',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: SizedBox(
              height: 290,
              width: 400,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 125, 185, 228),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: GoogleFonts.poppins(fontSize: 15, color: Colors.white,),
                    'A highly motivated vocational high school graduate currently pursuing Mobile Programming at PPKD. With no prior experience in coding, now passionately learning to become a skilled remote developer through dedication, consistency, and continuous growth',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
                color: Color(0xFF1E3A8A)
              ),
              child: Center(
                child: Text(
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    color: Colors.white),
                    '© 2025 Alfarezhi M. Rasidan · All rights reserved')),
            ),
          ),
        ],
      ),
    );
  }
}
