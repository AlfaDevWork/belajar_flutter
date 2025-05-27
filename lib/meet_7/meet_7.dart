import 'package:belajar_flutter/meet_7/checkbox_custom.dart';
import 'package:flutter/material.dart';

class MeetTujuh extends StatefulWidget {
  const MeetTujuh({super.key});

  @override
  State<MeetTujuh> createState() => _MeetTujuhState();
}

class _MeetTujuhState extends State<MeetTujuh> {
  //Checkbox
  final bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer'),
            ),
            buildCheckBox(_isChecked),
            ListTile(title: Text('Item 1'), onTap: () {}),
          ],
        ),
      ),
    );
  }

  Row buildCheckBox(bool? valueCheck) {
    return Row(
      children: [
        CheckBoxCustom(valueCheck: valueCheck),
        // Checkbox(
        //   // fillColor: WidgetStateProperty.all(AppColor.army1),
        //   activeColor: Colors.blue,
        //   checkColor: Colors.white,
        //   shape: BeveledRectangleBorder(), // mengatur bentuk checkbox
        //   side: BorderSide(color: Colors.green, width: 0),
        //   value: valueCheck,
        //   onChanged: (value) {
        //     setState(() {
        //       valueCheck = value ?? false;
        //     });
        //   },
        // ),
        // Text(
        //   _isChecked ? "Sudah bagus" : "Belum bagus",
        //   style: TextStyle(fontSize: 18),
        // ),
      ],
    );
  }
}
