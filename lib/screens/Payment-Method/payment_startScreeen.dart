import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';
import 'package:groceryapp/homePage_main.dart';
import 'package:groceryapp/screens/Payment-Method/add_New_Card.dart';

class Payment_StartScreen extends StatefulWidget {
  const Payment_StartScreen({super.key});

  @override
  State<Payment_StartScreen> createState() => _Payment_StartScreenState();
}

class _Payment_StartScreenState extends State<Payment_StartScreen> {
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
            'Bill Total: 2341',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: false,
          toolbarHeight: 50,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Container(
            width: size.width,
            height: size.height,
            child: SingleChildScrollView(
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    InkWell(
                      child: Text(
                        "+ Add",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {},
                    ),
                  ],
                ),
                SizedBox(height: 20),
                getHomeTabs("Home", true),
                getHomeTabs("Office", false),
                SizedBox(height: 8),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payment Method',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      getPaymeentMethodButtons(),
                    ],
                  ),
                ),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Add New Payment Method',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 10),
                        CardDesign(),
                        SizedBox(
                          width: size.width * 0.9,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {
                              //  Navigator.of(context).push(
                              // MaterialPageRoute(builder: (context) => LoginPage()),
                              // );
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomepageTwo(),
                                  ));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: actionBtnColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Text(
                              "Pay Now",
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

getHomeTabs(String name, bool isSelected) {
  return GestureDetector(
    onTap: () {},
    child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: isSelected ? Colors.green[100]! : Colors.grey),
          borderRadius: BorderRadius.circular(8.0),
          color: isSelected ? cardColor : carddefaultColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.home,
                            size: 30,
                          ),
                          SizedBox(width: 15),
                          Text(
                            name,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "123, WESTHEIMER road",
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                  flex: 8),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    size: 25,
                  ),
                  onPressed: () {},
                ),
                flex: 2,
              ),
            ],
          ),
        )),
  );

  // );
  // );
}

getPaymeentMethodButtons() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cardColor,
            boxShadow: [],
          ),
          child: Center(
            child: Container(
              // height: size.width * 0.8,
              // width: size.width * 0.8,
              margin: const EdgeInsets.all(30.0),
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
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cardColor,
            boxShadow: [],
          ),
          child: Center(
            child: Container(
              // height: size.width * 0.8,
              // width: size.width * 0.8,
              margin: const EdgeInsets.all(30.0),
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
      ),
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: cardColor,
            boxShadow: [],
          ),
          child: Center(
            child: Container(
              // height: size.width * 0.8,
              // width: size.width * 0.8,
              margin: const EdgeInsets.all(30.0),
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
      ),
    ],
  );
}
