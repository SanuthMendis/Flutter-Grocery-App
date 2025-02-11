import 'package:flutter/material.dart';
import 'package:groceryapp/components/card_ReviewCart.dart';
import 'package:groceryapp/components/card_ViewCart.dart';
import 'package:groceryapp/constants.dart';

class ReviewCart extends StatefulWidget {
  const ReviewCart({super.key});

  @override
  State<ReviewCart> createState() => _ReviewCartState();
}

class _ReviewCartState extends State<ReviewCart> {
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
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0.0,
          toolbarHeight: 90,
        ),
        body: Column(
          children: [
            Expanded(
                flex: 8,
                child: SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Card_ReviewCart(),
                        Card_ReviewCart(),
                        Card_ReviewCart(),
                        Card_ReviewCart(),
                        Card_ReviewCart(),
                      ],
                    ),
                  ),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 2.0, right: 2.0, top: 5.0),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
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
                          height: 10.0,
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
            // Container(
            //   color: Colors.green.shade100,
            //   child: Padding(
            //     padding: EdgeInsets.all(30.0),
            //     child: Container(
            //       color: Colors.green.shade100,
            //       // margin: EdgeInsets.all(10),
            //       child: Expanded(
            //         flex: 4,
            //         child: Container(
            //           child: Column(
            //             children: [
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Container(
            //                     child: Column(
            //                       children: [
            //                         Text(
            //                           'Total: Rs.193',
            //                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Column(
            //                       children: [
            //                         Text(
            //                           'View Details',
            //                           style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               Column(
            //                 children: [
            //                   Container(
            //                     child: Column(
            //                       children: [
            //                         Align(
            //                             alignment: Alignment.topLeft,
            //                             child: Text(
            //                               'Almost There',
            //                               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            //                             )),
            //                       ],
            //                     ),
            //                   ),
            //                   Container(
            //                     child: Column(
            //                       children: [
            //                         Align(
            //                           alignment: Alignment.topLeft,
            //                           child: Text(
            //                             'Login Signup to place order ',
            //                             style: TextStyle(
            //                               fontSize: 20,
            //                               fontWeight: FontWeight.bold,
            //                               color: Color.fromARGB(255, 175, 174, 174),
            //                             ),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ],
            //               ),
            //               SizedBox(
            //                 height: 20.0,
            //               ),
            //               SizedBox(
            //                 width: size.width * 0.9,
            //                 height: 50,
            //                 child: ElevatedButton(
            //                   onPressed: () {
            //                     //  Navigator.of(context).push(
            //                     // MaterialPageRoute(builder: (context) => LoginPage()),
            //                     // );
            //                     // Navigator.push(
            //                     //     context,
            //                     //     MaterialPageRoute(
            //                     //       builder: (context) => HomepageTwo(),
            //                     //     ));
            //                   },
            //                   style: ElevatedButton.styleFrom(
            //                     backgroundColor: actionBtnColor,
            //                     shape: RoundedRectangleBorder(
            //                       borderRadius: BorderRadius.circular(10),
            //                     ),
            //                   ),
            //                   child: Text("Continue"),
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
