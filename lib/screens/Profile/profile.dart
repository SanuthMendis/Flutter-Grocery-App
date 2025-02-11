// import 'package:flutter/material.dart';
// import 'package:groceryapp/homePage_main.dart';
// import 'package:flutter/services.dart' show rootBundle;

// class ProfileScreen extends StatefulWidget {
//   const ProfileScreen({super.key});

//   @override
//   State<ProfileScreen> createState() => _ProfileScreenState();
// }

// class _ProfileScreenState extends State<ProfileScreen> {
//   final double coverHeight = 280;

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => HomepageTwo(),
//                 ),
//               );
//             },
//             padding: EdgeInsets.all(6),
//             icon: Icon(
//               Icons.chevron_left,
//               color: Colors.black,
//             ),
//           ),
//           centerTitle: true,
//           title: Text(
//             "Profile",
//             style: TextStyle(
//               color: Colors.black,
//             ),
//           ),
//           toolbarOpacity: 0.5,
//           elevation: 0.0,
//           backgroundColor: Colors.white,
//         ),
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               children: [
//                 Align(
//                   alignment: Alignment.topCenter,
//                   child: Padding(
//                     padding: const EdgeInsets.all(10.0),
//                     child: SizedBox(
//                       width: 150,
//                       height: 150,
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(100),
//                         child: Image(
//                             image: AssetImage(
//                                 "assets/images/profileScreenImage2.png")),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 70),
//                 ProfileItems('Name', 'Sanuth Mendis', Icons.person),
//                 const SizedBox(height: 20),
//                 ProfileItems('Phone Number', '02932134', Icons.phone),
//                 const SizedBox(height: 20),
//                 ProfileItems('Email', 'sanuthmendis@gmail.com', Icons.email),
//                 const SizedBox(height: 20),
//                 ProfileItems('Location', 'Sri Lanka', Icons.location_city),
//                 const SizedBox(height: 20),
//                 SizedBox(
//                   height: 60,
//                   width: 400,
//                   child: ElevatedButton(
//                     onPressed: () {},
//                     style: ElevatedButton.styleFrom(
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(21),
//                       ),
//                       primary: Colors.black,),

//                     child: Text(
//                       "Edit Profile",
//                       style: TextStyle(fontSize: 20),

//                     ),
//                   ),
//                 ), //Elevated EditButton
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   ProfileItems(String title, String subtitle, IconData iconData) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.lightBlueAccent,
//         borderRadius: BorderRadius.circular(30)
//       ),
//       child: Column(
//         children: [
//           ListTile(
//             title: Text(
//               title,
//               style: TextStyle(color: Colors.white),
//             ),
//             subtitle: Text(subtitle, style: TextStyle(color: Colors.white)),
//             leading: Icon(iconData, color: Colors.white),
//             trailing: Icon(
//               Icons.arrow_forward,
//               color: Colors.white,
//             ),
//             tileColor: Colors.white,
//           )
//         ],
//       ),
//     );
//   }
// }
