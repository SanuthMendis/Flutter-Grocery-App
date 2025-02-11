import 'package:flutter/material.dart';

class RoundedButtonWithIcon extends StatelessWidget {
  final VoidCallback onPressed;

  RoundedButtonWithIcon({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),

        ),
        // padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0), // Adjust the padding
        minimumSize: Size(30, 20), // Adjust the minimum button size
      ),


      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), // Apply padding using a Container
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.add),
            SizedBox(width: 1.0),
          ],
        ),
      ),
    );
  }
}




class RoundedButtonWithRemoveIcon extends StatelessWidget {
  final VoidCallback onPressed;


  RoundedButtonWithRemoveIcon({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),

        ),
        // padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0), // Adjust the padding
        minimumSize: Size(30, 20), // Adjust the minimum button size
      ),


      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), // Apply padding using a Container
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.remove),
            SizedBox(width: 1.0),
          ],
        ),
      ),
    );
  }
}

class RoundedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;


  RoundedButtonWidget({required this.onPressed,required this.icon});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40.0),

        ),
        // padding: EdgeInsets.all(20.0),
        padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0), // Adjust the padding
        minimumSize: Size(30, 20), // Adjust the minimum button size
      ),


      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), // Apply padding using a Container
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon),
            SizedBox(width: 1.0),
          ],
        ),
      ),
    );
  }
}
