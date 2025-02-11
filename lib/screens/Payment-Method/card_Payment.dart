import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';

class Card_Selection_Screen extends StatefulWidget {
  const Card_Selection_Screen({super.key});

  @override
  State<Card_Selection_Screen> createState() => _Card_Selection_ScreenState();
}

class _Card_Selection_ScreenState extends State<Card_Selection_Screen> {
  late final PageController pageController;
  int pageNumber = 0;

  @override
  void initState() {
    pageController = PageController(
      initialPage: 0,
      viewportFraction: 0.88,
    );
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.chevron_left)),
          title: Text("Card"),
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0, left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 20,
                    child: Text(
                      "Preferred Payment",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 190,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (index) {
                    pageNumber = index;
                    setState(() {});
                  },
                  itemBuilder: (_, index) {
                    return AnimatedBuilder(
                      animation: pageController,
                      builder: (context, child) {
                        return child!;
                      },
                      child: Container(
                        margin: const EdgeInsets.only(right: 25, left: 25, top: 36, bottom: 12),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          color: cardColor,
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Text(
                      "Credit & Debit Card",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(25), color: cardColor),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Add New Card",
                                      style: TextStyle(color: Color.fromARGB(255, 1, 93, 4), fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Save and Pay via Cards",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color.fromARGB(255, 119, 117, 117),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(
                                            "assets/images/paypalicon.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(
                                            "assets/images/visacardicon.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          child: Image.asset(
                                            "assets/images/mastercardicon.png",
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle_outline_rounded,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Text(
                      "Other Cards",
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: SizedBox(
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: cardColor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 18.0, top: 18),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Add New Card",
                                      style: TextStyle(color: Color.fromARGB(255, 1, 93, 4), fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Save and Pay via Cards",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: const Color.fromARGB(255, 119, 117, 117),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 210, 209, 209),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          // child: Image.asset(
                                          //   "assets/images/paypalicon.png",
                                          // ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 210, 209, 209),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          // child: Image.asset(
                                          //   "assets/images/visacardicon.png",
                                          // ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height: 50,
                                      width: 50,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(15),
                                        color: cardColor,
                                        boxShadow: [],
                                      ),
                                      child: Center(
                                        child: Container(
                                          // height: size.width * 0.8,
                                          // width: size.width * 0.8,
                                          margin: const EdgeInsets.all(10.0),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 210, 209, 209),
                                            borderRadius: BorderRadius.circular(20),
                                          ),
                                          // child: Image.asset(
                                          //   "assets/images/mastercardicon.png",
                                          // ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle_outline_rounded,
                                size: 25,
                              ),
                              onPressed: () {},
                            ),
                            flex: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
