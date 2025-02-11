import 'package:flutter/material.dart';
import 'package:groceryapp/components/add_CouponsWidgets.dart';
//import 'package:groceryapp/screens/ShoppingCart/reviewCartTwo.dart';
import 'package:groceryapp/screens/ShoppingCart/viewreviewcart.dart';

import '../../components/SearchBar.dart';

class Add_CouponScreen extends StatefulWidget {
  const Add_CouponScreen({super.key});

  @override
  State<Add_CouponScreen> createState() => _Add_CouponScreenState();
}

class _Add_CouponScreenState extends State<Add_CouponScreen> {
  // Add this parameter

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ViewReviewCart(),
                  ),
                );
              },
              child: Icon(
                Icons.chevron_left,
                color: Colors.grey,
              ),
            ),
            title: Text(
              'Apply Coupon',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            elevation: 0.0,
            backgroundColor: Colors.white,
            toolbarHeight: 100,
          ),
          body: Column(children: [
            Expanded(
                //flex: 2,
                child: Container(
              height: size.width * 0.9,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(21),
              ),
              child: TextField(
                controller: null,
                autofocus: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(21)),

                  ///enabledBorder: UnderlineInputBorder(borderRadius: BorderRadius.circular(21)),
                  hintText: "Search Data...",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.black38),
                ),

                style: TextStyle(color: Colors.black, fontSize: 19.0),
                //onChanged: (query) => updateSearchQuery(query),
              ),
            )),
            Expanded(
              flex: 11,
              child: SingleChildScrollView(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Available Coupons",
                                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                              ))),
                      Add_Coupons(),
                      Add_Coupons(),
                      Add_Coupons(),
                      Add_Coupons(),
                    ],
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
