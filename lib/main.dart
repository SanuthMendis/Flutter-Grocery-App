import 'package:flutter/material.dart';
import 'package:groceryapp/homePage_main.dart';
import 'package:groceryapp/screens/Bottom-Nav-Tabs/home_content.dart';
import 'package:groceryapp/screens/LoginScreen/login_page.dart';
import 'package:groceryapp/screens/LoginScreen/sign_up_page.dart';

import 'package:groceryapp/screens/ShoppingCart/ReviewCart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: SignUp_Page(),
    ); //ViewCart())
  }
}
