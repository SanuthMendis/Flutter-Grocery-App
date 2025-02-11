import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  final TextEditingController searchController = TextEditingController();
  final String hintText; // Add this parameter

  SearchBar({required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
          controller: searchController,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
            hintText: hintText,
            suffixIcon: IconButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SerachListScreen(),
                //   ),
                // );
              },
              icon: Icon(
                Icons.search,
                color: Colors.red,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide:
                  BorderSide(color: Colors.red), // Set the outline color to red
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: const BorderSide(),
            ),
          ),
        ),
      ),
    );
  }
}
