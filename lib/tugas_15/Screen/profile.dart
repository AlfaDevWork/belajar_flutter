import 'package:belajar_flutter/tugas_15/api/user_api.dart';
import 'package:flutter/material.dart';

class ProfileScreen15 extends StatefulWidget {
  const ProfileScreen15({super.key});

  @override
  State<ProfileScreen15> createState() => _ProfileScreen15State();
}

class _ProfileScreen15State extends State<ProfileScreen15> {
  void showEditNameDialog() {
    final TextEditingController nameController = TextEditingController(
      text: name ?? '',
    );

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Nama'),
          content: TextField(
            controller: nameController,
            decoration: InputDecoration(labelText: 'Nama'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () async {
                final newName = nameController.text.trim();
                if (newName.isNotEmpty) {
                  await userService.updateUser(name: newName);
                  await getProfile();
                  Navigator.pop(context);
                }
              },
              child: Text('Edit'),
            ),
          ],
        );
      },
    );
  }

  final UserService userService = UserService();
  String? name;
  String? email;

  @override
  void initState() {
    super.initState();
    getProfile();
  }

  Future<void> getProfile() async {
    final userData = await userService.getUser();
    setState(() {
      name = userData['data']['name'];
      email = userData['data']['email'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: CircleAvatar(
                radius: 55,
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.person, color: Colors.white, size: 100),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.person_outline),
                SizedBox(width: 15),
                Text("Nama \n${name ?? '-'}"),
                Spacer(),
                IconButton(
                  onPressed: () {
                    showEditNameDialog();
                  },
                  icon: Icon(Icons.edit),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Icon(Icons.email_outlined),
                SizedBox(width: 15),
                Text("Email \n${email ?? '-'}"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
