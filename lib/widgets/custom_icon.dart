import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {

  final String title;

  const CustomIcon({
    Key key, 
    @required this.title
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          width: 350,
          margin: EdgeInsets.only(top: 50),
          child: SafeArea(
            child: Column(
              children: <Widget> [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image(image: AssetImage('assets/img.jpg'))),
                SizedBox(height: 20),
                Text( this.title, style: TextStyle(fontSize: 30),)
              ],),
          ),

        ),
    );
  }
}