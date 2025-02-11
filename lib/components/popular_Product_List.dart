import 'package:flutter/material.dart';

class popular_Product_List extends StatefulWidget {
  const popular_Product_List({super.key});


  @override
  State<popular_Product_List> createState() =>  popular_Product_listState();
}

class popular_Product_listState extends State<popular_Product_List> {
  late final PageController pageController;
  int pageNo = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              pageNo = index;
              setState(() {});
            },

            itemBuilder: (_, index) {
              return AnimatedBuilder(
                animation: pageController,

                builder: (context, child) {
                  return child!;
                },
                child: Container(
                  margin: const EdgeInsets.only(
                      right: 10, left: 10, top: 36, bottom: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24.0),
                    color: Colors.redAccent.shade100,
                  ),

                ),

              );
            },
          ),
    ),

    ],
    );
  }
}
