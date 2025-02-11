import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';

class Order_History extends StatelessWidget {
  const Order_History({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.99,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 25.0),
            child: Row(
              children: [
                Text(
                  'Order History',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160.0),
                  child: Icon(Icons.icecream),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                    height: 50.0,
                    width: 100,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: cardColor),
                      onPressed: () {},
                      child: Text(
                        "All(22)",
                        style: TextStyle(color: Colors.black),
                      ),
                    )),
                SizedBox(height: 50.0, width: 100, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: cardColor), onPressed: () {}, child: Text("Running (22)", style: TextStyle(color: Colors.black)))),
                SizedBox(height: 50.0, width: 100, child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: cardColor), onPressed: () {}, child: Text("Previous (22)", style: TextStyle(color: Colors.black)))),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              crossAxisSpacing: 12.0,
              mainAxisSpacing: 10.0,
              mainAxisExtent: 110.0,
            ),
            itemBuilder: (_, index) {
              IconData iconData;
              int orderId = 0;
              int items = 0;
              String processheading;

              switch (index) {
                case 0:
                  iconData = Icons.check_circle;
                  processheading = "Confirmed";
                  break;
                case 1:
                  iconData = Icons.star;
                  processheading = "Processing";
                  break;
                case 2:
                  iconData = Icons.favorite;
                  processheading = "Delivery";
                  break;
                case 3:
                  iconData = Icons.attach_file;
                  processheading = "Cancel";
                  break;
                default:
                  iconData = Icons.check_circle;
                  processheading = "Confirmed";
              }

              return Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: cardColor,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          child: Icon(iconData, size: 50.0),
                        ),
                      ),
                      SizedBox(width: 10.0), // Add spacing between icon and content
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 2, bottom: 8.0),
                        child: Column(
                          children: [
                            Text(
                              processheading,
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "Order ID:" + orderId.toString() + "",
                              style: TextStyle(fontSize: 16.5),
                            ),
                            Text(
                              "Items: " + (items.toString()) + "",
                              style: TextStyle(fontSize: 16.5),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
