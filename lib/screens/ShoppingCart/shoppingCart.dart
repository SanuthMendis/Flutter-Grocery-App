import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';

import '../../homePage_main.dart';

class ShoppingCart extends StatefulWidget {
  const ShoppingCart({super.key});

  @override
  State<ShoppingCart> createState() => _ShoppingCartState();
}

class _ShoppingCartState extends State<ShoppingCart> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomepageTwo(),
                ),
              );
            },
            padding: EdgeInsets.all(6),
            icon: Icon(
              Icons.chevron_left,
              color: Colors.green,
            ),
          ),
          title: Text(
            'View Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.green,
              fontSize: 19,
            ),
          ),
          actions: [],
          elevation: 0.0,
          toolbarHeight: 60.0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Container(
                  height: size.height * 0.6,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      getcartItem(context, "assets/images/visacardicon.png", "Mango", 0, "21 MAY 2023"),
                      getcartItem(context, "assets/images/visacardicon.png", "PineApple", 1, "21 MAY 2023"),
                      getcartItem(context, "assets/images/visacardicon.png", "Mango", 2, "21 MAY 2023"),
                      getcartItem(context, "assets/images/visacardicon.png", "Apple", 3, "21 MAY 2023"),
                      getcartItem(context, "assets/images/visacardicon.png", "Onion", 4, "21 MAY 2023"),
                    ],
                  ),
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
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //   children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rs.190',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Rs.3',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Free',
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),

                          SizedBox(
                            height: 5,
                          ),

                          Expanded(
                            child: Divider(
                              thickness: 1.5,
                              color: Colors.grey[400],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Sub Total",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.5),
                                textAlign: TextAlign.left,
                              ),
                              Text(
                                '\$100',
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.red),
                                textAlign: TextAlign.left,
                              ),
                            ],
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
            ],
          ),
        ),
      ),
    );
  }
}

getcartItem(BuildContext context, String image, String name, int code, String date) {
  Size size = MediaQuery.of(context).size;

  return Column(
    children: [
      Container(
        width: size.width,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(image),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                Text(
                  "${name.toString()}",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Order Code ${code.toString()},",
                  style: TextStyle(fontSize: 16.5),
                ),
                Text(
                  "Online Payment",
                  style: TextStyle(fontSize: 16.5),
                ),
              ]),
            ),
            Text("${date.toString()}"),
          ],
        ),
      ),
      Divider(
        thickness: 1,
        height: 10,
      )
    ],
  );
}
