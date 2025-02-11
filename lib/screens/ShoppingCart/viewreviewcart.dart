import 'package:flutter/material.dart';
import 'package:groceryapp/components/card_ReviewCart.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/screens/Payment-Method/add_CouponScreen.dart';

class ViewReviewCart extends StatefulWidget {
  const ViewReviewCart({super.key});

  @override
  State<ViewReviewCart> createState() => _ViewReviewCartState();
}

class _ViewReviewCartState extends State<ViewReviewCart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.chevron_left,
            color: Colors.black,
          ),
          title: Text(
            'Review Cart',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          backgroundColor: Colors.white,
          elevation: 0.0,
          toolbarHeight: 50,
        ),
        body: Column(children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Card_ReviewCart(),
              ],
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(children: [
                  Expanded(
                    child: Divider(
                      thickness: 1.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ]),
              ),
              Container(
                  width: size.width * 0.9,
                  height: size.width * 0.1,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Icon(Icons.book_online_outlined),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'Avail Offers/ Coupons',
                          style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                        ),
                      ]),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Add_CouponScreen(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  )),
            ],
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: size.width * 0.9,
                  height: size.width * 0.7,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Bill Details",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Amount',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rs.190',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Delivery Charge',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Rs.3',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Carry Bag Charge',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Free',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Sub Total",
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                            textAlign: TextAlign.left,
                          ),
                          Text(
                            '\$100',
                            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.red),
                            textAlign: TextAlign.left,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(children: [
                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.grey[400],
                            ),
                          ),
                        ]),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delivery Partner Fee Calculated \nin next step",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 0.114, color: const Color.fromARGB(255, 177, 174, 174)),
                            textAlign: TextAlign.left,
                          ),
                          Icon(Icons.minimize_rounded, color: actionBtnColor),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, right: 2.0, top: 5.0),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              height: 212.5,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 209, 230, 210),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0),
                ),
              ),
              // margin: EdgeInsets.all(10),
              child: Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'Total: Rs.193',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Text(
                                  'View Bill Details',
                                  style: TextStyle(color: Colors.green, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Almost There',
                                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                                    )),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Login Signup to place order ',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 175, 174, 174),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        width: size.width * 0.9,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            //  Navigator.of(context).push(
                            // MaterialPageRoute(builder: (context) => LoginPage()),
                            // );
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => HomepageTwo(),
                            //     ));
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: actionBtnColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: Text("Continue"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
