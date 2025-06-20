import 'package:flutter/material.dart';

class CustomFormTextField15 extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hintText;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final TextInputType keyboardType;

  const CustomFormTextField15({
    super.key,
    required this.controller,
    this.label,
    this.hintText,
    this.obscureText = false,
    this.validator,
    this.suffixIcon,
    this.keyboardType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SizedBox(height: 5),
          SizedBox(
            height: 41,
            width: 359,
            child: TextFormField(
              controller: controller,
              obscureText: obscureText,
              validator: validator,
              keyboardType: keyboardType,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.black,
              cursorHeight: 20,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 13),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                label: Text(label ?? ''),
                labelStyle: TextStyle(color: Colors.black),
                hintText: hintText,
                hintStyle: TextStyle(color: Color(0x6E1F1F1F), fontSize: 14),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffC6C6C6)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffC6C6C6)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffC6C6C6)),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                suffixIcon: suffixIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
