import 'package:flutter/material.dart';

class PageCheckBox extends StatefulWidget {
  const PageCheckBox({super.key, this.valueCheck});
  final bool? valueCheck;

  @override
  State<PageCheckBox> createState() => _PageCheckBoxState();
}

class _PageCheckBoxState extends State<PageCheckBox> {
  bool valueCheck = false;
  @override
  void initState() {
    valueCheck = widget.valueCheck ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Checkbox(
              // fillColor: WidgetStateProperty.all(AppColor.army1),
              activeColor: Colors.blue,
              checkColor: Colors.white,
              shape: CircleBorder(),
              side: BorderSide(color: Colors.black, width: 0),
              value: valueCheck,
              onChanged: (value) {
                setState(() {
                  valueCheck = value ?? false;
                });
              },
            ),
            Text(
              'Saya menyetujui semua persyaratan yang berlaku',
              // valueCheck ? "Syarat & Ketentuan" : "Syarat & Ketentuan",
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),
        Text(
          valueCheck
              ? "Lanjutkan pendaftaran diperbolehkan"
              : "Anda belum bisa melanjutkan",
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
