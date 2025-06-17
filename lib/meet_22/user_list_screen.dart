// import 'package:belajar_flutter/meet_22/api/get_user.dart';
// import 'package:flutter/material.dart';

// class UserListScreen extends StatelessWidget {
//   const UserListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           FutureBuilder(
//             future: getUsers(),
//             builder: (context, snapshot) {
//               if (snapshot.connectionState == ConnectionState.waiting) {
//                 return Center(child: CircularProgressIndicator());
//               } else if (snapshot.hasData) {
//                 final users = snapshot.data;
//                 return ListView.builder(
//                   shrinkWrap: true,
//                   itemCount: users?.length ?? 0,
//                   itemBuilder: (BuildContext context, int index) {
//                     final user = users?[index];
//                     return ListTile(
//                       title: Text('${user?.firstName} ${user?.lastName}'),
//                       subtitle: Text('${user?.email}'),
//                       leading: CircleAvatar(
//                         backgroundImage: NetworkImage(user?.avatar ?? ""),
//                       ),
//                       trailing: Icon(Icons.arrow_forward_ios, size: 12),
//                     );
//                   },
//                 );
//               } else {
//                 return Text('Error: ${snapshot.error}');
//               }
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
