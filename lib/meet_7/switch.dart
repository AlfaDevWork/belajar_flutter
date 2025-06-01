import 'package:flutter/material.dart';

class PageSwitch extends StatefulWidget {
  const PageSwitch({super.key});

  @override
  State<PageSwitch> createState() => _PageSwitchState();
}

class _PageSwitchState extends State<PageSwitch> {
  bool darkMode = false;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        decoration: BoxDecoration(
          color: darkMode ? Colors.black : Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Switch(
                    value: darkMode,
                    onChanged: (value) {
                      setState(() {
                        darkMode = value;
                      });
                    },
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Aktifkan Mode Gelap',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: 95),
                  Text(
                    darkMode ? 'Mode Gelap' : 'Mode Terang',
                    style: TextStyle(
                      color: darkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
