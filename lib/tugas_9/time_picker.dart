import 'package:flutter/material.dart';

class PageTimePicker extends StatefulWidget {
  const PageTimePicker({super.key});

  @override
  State<PageTimePicker> createState() => _PageTimePickerState();
}

class _PageTimePickerState extends State<PageTimePicker> {
  TimeOfDay? selectedTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75, vertical: 10),
          child: SizedBox(
            height: 40,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () async {
                TimeOfDay? picked = await showTimePicker(
                  context: context,
                  initialTime: selectedTime!,
                  builder:
                      (context, child) => Localizations.override(
                        context: context,
                        locale: const Locale('en', 'US'),
                        child: child!,
                      ),
                );
                if (picked != null) {
                  setState(() {
                    selectedTime = picked;
                  });
                  // if (!context.mounted) return;
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   SnackBar(
                  //     content: Text(
                  //       "Penginat diatur pukul: ${selectedTime?.format(context)}",
                  //     ),
                  //   ),
                  // );
                }
              },
              child: Text(
                'Atur Pengingat',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        Text("Penginat diatur pukul: ${selectedTime?.format(context)}"),
      ],
    );
  }
}
