import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/Screens/Bottom-Nav-Tabs/categories.dart';
import 'package:groceryapp/screens/Bottom-Nav-Tabs/home_content.dart';
import 'package:groceryapp/screens/Bottom-Nav-Tabs/order_History.dart';
import 'package:groceryapp/screens/Profile/user_profile.dart';
import 'package:groceryapp/screens/cartTabBar.dart';

class HomepageTwo extends StatefulWidget {
  const HomepageTwo({super.key});

  @override
  State<HomepageTwo> createState() => _HomepageTwoState();
}

class _HomepageTwoState extends State<HomepageTwo> {
  int _currentIndex = 0;
  String dropdownValue = 'CategoriesScreen1';
  List products = [];

  Widget ContentBody() {
    if (_currentIndex == 0) {
      return getHomeContent();
    } else if (_currentIndex == 1) {
      return getCategoryContent();
    } else if (_currentIndex == 2) {
      return getHCartContent();
    } else if (_currentIndex == 3) {
      return getHistoryContent();
    }
    return getHomeContent();
  }

  Widget getHomeContent() {
    return HomeContent();
  }

  Widget getCategoryContent() {
    return Categories();
  }

  Widget getHCartContent() {
    return TabBarDesign();
  }

  Widget getHistoryContent() {
    return Order_History();
  }

  void _onItemTapped(int index) async {
    if (!mounted) return;

    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: WillPopScope(
          onWillPop: () async {
            SystemNavigator.pop();   // quit the whole app using this line
            return true; //enabling the back button and quit the app when true
          },
          child: Scaffold(
            appBar: _currentIndex == 0
                ? AppBar(
                    backgroundColor: appBarColor,
                    automaticallyImplyLeading: false,
                    toolbarHeight: 60,
                    leading: Image.asset('assets/images/applogo.jpg', height: 60, width: 120),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset('assets/images/applogo.jpg',
                        //     height: 60, width: 120),
                        Text(
                          'Grocery App',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    // centerTitle: true,
                    // leading: IconButton(
                    //   onPressed: () {},
                    //   icon: Icon(Icons.arrow_back, color: Colors.black),
                    // ),
                    actions: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => User_Profile(),
                              ),
                            );
                          },
                          child: Image.asset('assets/images/profileimage.png', height: 40, width: 40),
                        ),
                      ),
                    ],
                    toolbarOpacity: 0.5,
                    elevation: 0.0,
                  )
                : _currentIndex == 1
                    ? AppBar(
                        backgroundColor: appBarColor,
                        automaticallyImplyLeading: false,
                        toolbarHeight: 60,
                        centerTitle: true,

                        /* title:DropdownButton<String>(
                            value: dropdownValue,
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue = newValue!;
                                switch (dropdownValue) {
                                  case 'CategoriesScreen1':
                                    CategoriesScreen1();
                                    break;
                                  case 'Categories':
                                    Categories();
                                    break;
        
                                }
                              });
                            },
                            items: <String>[
                              'CategoriesScreen1',
                              'Categories',
        
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),*/

                        leading: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.all(6),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          ),
                        ),
                        toolbarOpacity: 0.5,
                        elevation: 0.0,
                      )
                    : _currentIndex == 2
                        ? AppBar(
                            title: Text(
                              "Shopping Cart",
                              style: TextStyle(color: Colors.black),
                            ),
                            centerTitle: true,
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                            toolbarHeight: 100,
                          )
                        : AppBar(
                            leading: Icon(
                              Icons.chevron_left,
                              color: Colors.black,
                            ),
                            title: Text(
                              'Order History',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                            ),
                            backgroundColor: Colors.transparent,
                            elevation: 0.0,
                            centerTitle: true,
                          ),
            body: ContentBody(),
            bottomNavigationBar: BottomNavigationBar(
              onTap: _onItemTapped,
              items: [
                BottomNavigationBarItem(
                  icon: new Icon(Icons.home, size: 20),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: new Icon(Icons.category, size: 20),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.add_shopping_cart, size: 20),
                  label: 'Cart',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.history, size: 20),
                  label: 'History',
                )
              ],
              currentIndex: _currentIndex,
              selectedItemColor: Colors.blue[800],
              selectedFontSize: 19,
              unselectedFontSize: 19,
              unselectedItemColor: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
