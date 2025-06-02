import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PageDatePicker extends StatefulWidget {
  const PageDatePicker({super.key});

  @override
  State<PageDatePicker> createState() => _PageDatePickerState();
}

class _PageDatePickerState extends State<PageDatePicker> {
  DateTime? selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 75),
          child: SizedBox(
            height: 40,
            width: 250,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () async {
                DateTime? picked = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: selectedDate,
                  lastDate: DateTime.now(),
                  builder:
                      (context, child) => Localizations.override(
                        context: context,
                        locale: Locale('id'),
                        child: child!,
                      ),
                );
                if (picked != null) {
                  setState(() {
                    selectedDate = picked;
                  });
                }
              },
              child: Text(
                'Pilih Tanggal lahir',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Tanggal Lahir : ${selectedDate == null ? "Pilih tanggal terlebih dahulu!" : DateFormat("dd MMMM yyyy", "id").format(selectedDate!)}',
        ),
      ],
    );
  }
}
