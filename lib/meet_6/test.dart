import 'package:flutter/material.dart';

class Testing extends StatefulWidget {
  const Testing({super.key});

  @override
  State<Testing> createState() => _TestingState();
}

class _TestingState extends State<Testing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Container(
            height: 289,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                  // ignore: deprecated_member_use
                  Colors.black.withOpacity(0.4),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
                image: AssetImage('assets/images/ppkd.jpg'),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 79,
                bottom: 128,
                left: 66,
                right: 67,
              ),
              child: Column(
                children: [
                  Text(
                    'Hallo!',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                  ),
                  Text(
                    'Please login to get full access from us',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
