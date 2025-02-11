import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groceryapp/components/rounded_Icon.dart';
import 'package:groceryapp/constants.dart';

class Card_ReviewCart extends StatelessWidget {
  const Card_ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Card(
      elevation: 3.0,
      margin: EdgeInsets.all(9.0),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.15,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Container(
                height: size.width * 0.25,
                width: size.width * 0.25,
                decoration: BoxDecoration(
                  color: actionBtnColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ripe FRUIT',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 11),
                    ),
                    Text(
                      '2Kg',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Rs.1200',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 2.0),
              Expanded(
                child: Column(
                  children: [
                    Icon(CupertinoIcons.heart_circle),
                    Row(
                      children: [
                        RoundedButtonWithIcon(
                          onPressed: () {},
                        ),
                        Text('1'),
                        RoundedButtonWithRemoveIcon(
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
