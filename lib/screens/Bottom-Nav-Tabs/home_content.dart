import "package:flutter/material.dart";
import 'dart:convert' as convert;
import 'package:groceryapp/api_services/api_service.dart';
import 'package:groceryapp/components/HorizontalList.dart';
import 'package:groceryapp/product_card.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  List products = [];

  @override
  void initState() {
    super.initState();
    getAllProducts();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> getAllProducts() async {
    var response = await ApiServices.getAllProducts();
    if (response.statusCode == 200 && response.body != null) {
      setState(() {
        products = convert.jsonDecode(response.body);
      });
    }

    print("products $products");
  }

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        HorizontalList(),
        SizedBox(height: 30),
        Container(
          height: 360,
          child: GridView.builder(
            physics: ScrollPhysics(),
            shrinkWrap: true,
            itemCount: products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              mainAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => ProductCard(
              id: products[index]["id"],
              name: products[index]["title"],
              imagePath: products[index]["image"],
              price: products[index]["price"],
            ),
          ),
        ),
      ],
    );
  }
}



























 // itemBuilder: (_, index) {
            //   return Padding(
            //      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16.0),
            //         color: Colors.white,
            //       ),
            //       child:
            //       Row(children: [
            //         Padding(
            //           padding: const EdgeInsets.only(
            //               left: 10, top: 10, bottom: 10),
            //           child: Align(
            //             alignment: Alignment.topLeft,
            //             child: ClipRRect(
            //               borderRadius: const BorderRadius.only(
            //                 topLeft: Radius.circular(16.0),
            //                 topRight: Radius.circular(16.0),
            //                 bottomLeft: Radius.circular(16.0),
            //                 bottomRight: Radius.circular(16.0),
            //               ),
            //               child: Image.asset(
            //                 products[index].image,
            //                 height: 200,
            //                 width: 150,
            //                 fit: BoxFit.cover,
            //               ),
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: EdgeInsets.all(30),
            //           child: Align(
            //             alignment: Alignment.topLeft,
            //             child: Column(
            //               children: [
            //                 Container(
            //                   color: Colors.white,
            //                   child: Padding(
            //                     padding: const EdgeInsets.all(8.0),
            //                     child: Column(
            //                       crossAxisAlignment:
            //                           CrossAxisAlignment.start,
            //                       children: [
            //                         Text("${products[index].price}",
            //                             style: TextStyle(
            //                                 color: Colors.red,
            //                                 fontWeight:
            //                                     FontWeight.bold,
            //                                 fontSize: 25)),
            //                         Text("${products[index].title}",
            //                             style: TextStyle(
            //                                 color: Colors.black,
            //                                 fontWeight:
            //                                     FontWeight.bold,
            //                                 fontSize: 23)),
            //                         Padding(
            //                           padding: const EdgeInsets.only(
            //                               top: 30),
            //                           child: Column(
            //                             children: [
            //                               ElevatedButton(
            //                                 onPressed: () {},
            //                                 child: Text(
            //                                   "Add To Cart",
            //                                   style: TextStyle(
            //                                     color: Colors.white,
            //                                     fontSize: 18,
            //                                     fontWeight:
            //                                         FontWeight.bold,
            //                                   ),
            //                                 ),
            //                               )
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         )
            //       ]),
            //     ),
            //   );
            // })
        
