import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String text;
  final Function onPressed;

  const CustomButton({
    Key key, 
    @required this.text,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed:
          this.onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.blueAccent,
          onPrimary: Colors.white,
          shape: StadiumBorder()
        ),
        child: Container(
          width: double.infinity,
          height: 55,
          child: Center(
            child: Text(this.text, style: TextStyle(fontSize: 18),)
          )
        ),
      );
  }
}