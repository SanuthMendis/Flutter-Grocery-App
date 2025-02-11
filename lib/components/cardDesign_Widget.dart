import 'package:flutter/material.dart';
import 'package:groceryapp/components/rounded_Icon.dart';


class CardDesign_Widget extends StatelessWidget {
  const CardDesign_Widget({Key? key, required this.title, required this.subtitle, required this.flexibleVariable}) : super(key: key);
  final String title;
  final String subtitle;
  final dynamic flexibleVariable;



  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40.0),
      child: Card(
        color: Colors.green[200],
        elevation: 4.0,
        // margin: EdgeInsets.all(10.0),
        child: SizedBox(
          height: 120.0,
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Row(
              children: [
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RoundedButtonWidget(
                            onPressed: () {
                              // Your onPressed logic here
                            },
                            icon: Icons.percent, // Pass the desired icon
                          ),
                          Text(title,
                              style: TextStyle(
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      flexibleVariable,
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
