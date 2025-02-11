import 'package:flutter/material.dart';

class User_Profile extends StatelessWidget {
  const User_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text(
            "User Profile",
            style: TextStyle(color: Colors.black),
          ),
          elevation: 0.0,
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.grey[300],
          leading: IconButton(
            icon: Icon(Icons.chevron_left),
            color: Colors.black,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Column(
                      children: [
                        Profile_Card(),
                        SizedBox(height: 10),
                      ],
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Profile_Details(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Details Widget
class Profile_Details extends StatefulWidget {
  @override
  State<Profile_Details> createState() => _Profile_DetailsState();
}

class _Profile_DetailsState extends State<Profile_Details> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _firstNameController = TextEditingController();

  TextEditingController _secondNameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _phone1Controller = TextEditingController();

  TextEditingController _phone2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            // controller: _emailController,
            decoration: InputDecoration(
              hintText: "Sanuth Sithmaka",
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: TextField(
                  // controller: _firstNameController,
                  decoration: InputDecoration(
                    hintText: "Sanuth",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  readOnly: true,
                  // controller: _secondNameController,
                  decoration: InputDecoration(
                    hintText: 'Sithmaka',
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextField(
            readOnly: true,
            // controller: _phone1Controller,
            decoration: InputDecoration(
              hintText: '07183920453',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            readOnly: true,
            // controller: _phone2Controller,
            decoration: InputDecoration(
              hintText: '07732342455',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
            height: 50,
            width: 150,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                "Edit Profile",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//profile card widget
class Profile_Card extends StatefulWidget {
  const Profile_Card({super.key});
  @override
  State<Profile_Card> createState() => _Profile_CardState();
}

class _Profile_CardState extends State<Profile_Card> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.orange[100],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0), // Rounded borders
      ),
      child: Container(
        width: 270,
        height: 270,
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profileimage.png'), // Replace with your image asset path
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Ghaly",
              style: TextStyle(color: Colors.red, fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text(
              "sanuth@gmail.com",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
