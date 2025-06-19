import 'package:flutter/material.dart';

class DefaultButton15 extends StatelessWidget {
  const DefaultButton15({
    super.key,
    this.onPressed,
    required this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27),
      child: SizedBox(
        width: 359,
        height: 41,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shadowColor: Colors.black,
            backgroundColor: backgroundColor,
            disabledBackgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            elevation: 0,
          ),
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
