import 'package:flutter/material.dart';

class CheckBoxCustom extends StatefulWidget {
  const CheckBoxCustom({super.key, this.valueCheck});
  final bool? valueCheck;

  @override
  State<CheckBoxCustom> createState() => _CheckBoxCustomState();
}

class _CheckBoxCustomState extends State<CheckBoxCustom> {
  bool valueCheck = false;
  @override
  void initState() {
    valueCheck = widget.valueCheck ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          // fillColor: WidgetStateProperty.all(AppColor.army1),
          activeColor: Colors.green,
          checkColor: Colors.white,
          shape: CircleBorder(),
          side: BorderSide(color: Colors.black, width: 0),
          value: valueCheck,
          onChanged: (value) {
            setState(() {
              print("Checkbox value changed: $value");
              valueCheck = value ?? false;
            });
          },
        ),
        Text(
          valueCheck ? "Syarat & Ketentuan" : "Syarat & Ketentuan",
          style: TextStyle(fontSize: 18),
        ),
      ],
    );
  }
}
