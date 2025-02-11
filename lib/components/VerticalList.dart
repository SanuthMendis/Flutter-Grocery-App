// import 'package:flutter/material.dart';

// import 'dart:convert' as convert;
// import 'package:groceryapp/api_services/api_service.dart';
// import 'package:groceryapp/product_card.dart';

// class VerticleList extends StatefulWidget {

//   @override
//   State<VerticleList> createState() => _VerticleListState();
// }

// class _VerticleListState extends State<VerticleList> {
//   List products = [];

//   @override
//   void initState() {
//     super.initState();
//     getAllProducts();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//   }

//   Future<void> getAllProducts() async{
//     var response = await ApiServices.getAllProducts();
//     print(response.body.toString());

//     if(response.statusCode == 200 && response.body != null){
//       setState(() {
//         products = convert.jsonDecode(response.body);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(15.0),
//           child: Text(
//             'Irresistible Offer',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: GridView.builder(
//             physics: const NeverScrollableScrollPhysics(),
//             shrinkWrap: true,
//             itemCount: products.length,
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 12.0,
//               mainAxisSpacing: 12.0,
//               mainAxisExtent: 350,
//             ),
//             itemBuilder: (context, index) => ProductCard(
//               id: products[index]["id"],
//               name: products[index]["name"],
//               imagePath: products[index]["image"],
//               price: products[index]["price"],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }


