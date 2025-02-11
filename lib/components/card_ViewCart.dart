import 'package:flutter/material.dart';

class Card_ViewCart extends StatelessWidget {
  const Card_ViewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: SizedBox(
        height: 120.0,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.green[100],
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
              SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ripe FRUIT',
                      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
                    ),
                    Text(
                      'Order Code: 1232424',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      'Online Payment',
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Expanded(child: Text('31 May 2023')),
            ],
          ),
        ),
      ),
    );
  }
}
