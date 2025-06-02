import 'package:flutter/material.dart';

class PageDropdown extends StatefulWidget {
  const PageDropdown({super.key});

  @override
  State<PageDropdown> createState() => _PageDropdownState();
}

class _PageDropdownState extends State<PageDropdown> {
  final List<String> kategoriProduk = [
    "Elektronik",
    "Pakaian",
    "Makanan",
    "Lainnya",
  ];
  String? selectedItem;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Center(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                border: Border.all(color: Colors.black),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: DropdownButton(
                hint: Text('Pilih Kategori'),
                value: selectedItem,
                onChanged: (value) {
                  setState(() {
                    selectedItem = value;
                  });
                },
                items:
                    kategoriProduk
                        .map(
                          (item) =>
                              DropdownMenuItem(value: item, child: Text(item)),
                        )
                        .toList(),
              ),
            ),
            Text(
              selectedItem == null
                  ? "Silahkan pilih kategori terlebih dahulu"
                  : "Anda memilih kategori : $selectedItem",
            ),
          ],
        ),
      ),
    );
  }
}
