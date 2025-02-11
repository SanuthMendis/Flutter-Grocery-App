import 'package:flutter/material.dart';
import 'package:groceryapp/components/SearchBar.dart';

class SerachListScreen extends StatefulWidget {
  const SerachListScreen({super.key});

  @override
  State<SerachListScreen> createState() => _SerachListScreenState();
}

class _SerachListScreenState extends State<SerachListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      // appBar: AppBar(
      //   title: Text(
      //     "Search List",
      //     style: TextStyle(
      //       color: Colors.red,
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
         // SearchBar(hintText: "Search",),
          Container(),
        ],
      )
    );
  }
}
