import 'package:flutter/material.dart';

class MeetEmpat extends StatelessWidget {
  const MeetEmpat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Center(
          child: Text(
            "Formulir & Daftar Produk",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  // color: Color(0xffEAE4D5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: Center(
                        child: Text(
                          'Formulir',
                          style: TextStyle(fontSize: 24, color: Colors.black87),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 10,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Nama',
                          hintText: "Masukkan Nama",
                          filled: true,
                          fillColor: Color(0xffF2F2F2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 3,
                            ),
                          ),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 10,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: "Masukkan Email",
                          filled: true,
                          fillColor: Color(0xffF2F2F2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 3,
                            ),
                          ),
                          prefixIcon: Icon(Icons.email),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 10,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'No. HP',
                          hintText: "Masukkan Nomor HP",
                          filled: true,
                          fillColor: Color(0xffF2F2F2),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 3,
                            ),
                          ),
                          prefixIcon: Icon(Icons.phone),
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 8,
                        right: 8,
                        bottom: 15,
                      ),
                      child: TextField(
                        keyboardType: TextInputType.multiline,
                        decoration: InputDecoration(
                          labelText: 'Catatan',
                          hintText: "Masukkan catatan",
                          fillColor: Color(0xffF2F2F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide(
                              color: primaryColor,
                              width: 3,
                            ),
                          ),
                          prefixIcon: Icon(Icons.notes),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'Daftar Produk',
                        style: TextStyle(fontSize: 24, color: Colors.black87),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          final items = [
                            {
                              "title": "Espresso",
                              "price": "Rp20.000",
                              "image": "assets/images/Espresso.jpg",
                            },
                            {
                              "title": "Latte",
                              "price": "Rp25.000",
                              "image": "assets/images/Latte.jpg",
                            },
                            {
                              "title": "Cappuccino",
                              "price": "Rp25.000",
                              "image": "assets/images/Cappuccino.jpg",
                            },
                            {
                              "title": "Americano",
                              "price": "Rp22.000",
                              "image": "assets/images/Americano.jpg",
                            },
                            {
                              "title": "Macchiato",
                              "price": "Rp27.000",
                              "image": "assets/images/Macchiato.jpg",
                            },
                            {
                              "title": "Mocha",
                              "price": "Rp28.000",
                              "image": "assets/images/Mocha.jpg",
                            },
                          ];

                          final item = items[index];

                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: SizedBox(
                                  width: 60,
                                  height: 60,
                                  child: Image.asset(
                                    item["image"]!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              title: Text(
                                item["title"]!,
                                style: TextStyle(color: textLight),
                              ),
                              subtitle: Text(item["price"]!),
                              trailing: Icon(Icons.arrow_forward_ios),
                              tileColor: secondaryColor,
                              onTap: () {},
                              // dense: true,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

final backgroundColor = Color(0xFFF9F5F0);
final primaryColor = Color(0xFF8E806A);
final secondaryColor = Color(0xFFC3B091);
final accentColor = Color(0xFFD9CAB3);
final textDark = Color(0xFF2E2E2E);
final textLight = Color(0xFFFFFFFF);
