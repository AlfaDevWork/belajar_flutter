import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MeetDua extends StatelessWidget {
  const MeetDua({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Lengkap', style: TextStyle()),
        backgroundColor: Colors.lightBlue,
      ),
      body:Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                'Alfarezhi Mohamad Rasidan',
                style: GoogleFonts.poppins(fontSize: 22),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(),
            )
          ],
        ),
    );
  }
}
