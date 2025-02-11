import 'package:flutter/material.dart';
import 'package:groceryapp/Models//categoryItems.dart';
import 'package:groceryapp/screens/Bottom-Nav-Tabs/home_content.dart';
import 'package:groceryapp/screens/LoginScreen/login_page.dart';
import 'package:groceryapp/screens/LoginScreen/sign_up_page.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15),
                hintText: "Search",
                suffixIcon: const Icon(Icons.search),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red), // Set the outline color to red
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1.0),
                  borderSide: const BorderSide(),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: Category_List.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 30.0,
                mainAxisExtent: 70,
              ),
              itemBuilder: (_, index) {
                final category = Category_List[index];
                final image = category.category_image;
                final title = category.category_title;

                return GestureDetector(
                  onTap: () {
                    if (category.category_title == "Vegetables") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "fruits") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => SignUp_Page(),
                        ),
                      );
                    } else if (category.category_title == "JUices") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Bread") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Meat") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Fish") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Cooking") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Beverages") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Health") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Baby\nCare") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Pet Care") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Beauty") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Barber") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Breakfast") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Diary") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Spreads") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Electric") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Baby\nProducts") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Baby\nFoods") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Home &\nKitchen") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Sports") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Fitness") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Music") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Fashion") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    } else if (category.category_title == "Jewelry") {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      // border: Border.all(
                      //   width: 0, // Adjust the width as needed
                      // ),
                    ),
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(image),
                        ),
                      ),
                      Text(
                        category.category_title,
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10),
                      ),
                    ]),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
