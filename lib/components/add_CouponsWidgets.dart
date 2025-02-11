import 'package:flutter/material.dart';
import 'package:groceryapp/components/rounded_Icon.dart';

class Add_Coupons extends StatelessWidget {
  const Add_Coupons({super.key});


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            Coupon_Card(),
            Padding(
                padding: EdgeInsets.all(8),
                child: Text(
                  'Use the Code FRldnnew and get free delivery on orders on orders above 48 on your first 5 orders on Instamatic',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                )),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child:
                  Align(alignment: Alignment.topLeft,
                      child: Text('+ More',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.green),),
                  ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [

                  Expanded(
                    child: Divider(thickness: 1.5,
                      color: Colors.grey[400],),
                  ),



                  Expanded(
                    child: Divider(thickness: 1.5,
                      color: Colors.grey[400],),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
          ],
        ),
      );

  }
}

class Coupon_Card extends StatelessWidget {
  const Coupon_Card({super.key});

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
                          Text('Coupon Name',
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
                        '         Description of the coupon is this',
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
                      'Apply',
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
