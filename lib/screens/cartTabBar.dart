import 'package:flutter/material.dart';
import 'package:groceryapp/constants.dart';

class CartTabBar extends StatelessWidget {
  const CartTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarDesign();
  }
}

class TabBarDesign extends StatefulWidget {
  const TabBarDesign({super.key});

  @override
  State<TabBarDesign> createState() => _TabBarDesignState();
}

class _TabBarDesignState extends State<TabBarDesign> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(21.0), color: actionBtnColor),
              child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(21.0),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: 'Address',
                    ),
                    Tab(
                      text: 'View Cart',
                    ),
                    Tab(
                      text: 'Payment Method',
                    ),
                    Tab(
                      text: 'Confirm Page',
                    ),
                  ]),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                Center(child: Text("Address")),
                Center(child: Text("View Cart")),
                Center(child: Text("Payment")),
                Center(child: Text("Confirm")),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
