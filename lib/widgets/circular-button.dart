import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  final String title;
  final Function onPress;
  final Color color;

  CircularButton(
      {key: Key,
      @required this.title,
      this.color = const Color(0XFF387DE3),
      @required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      alignment: Alignment.center,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          textStyle: TextStyle(
            fontSize: 16,
          ),
          minimumSize: Size(
            MediaQuery.of(context).size.width,
            50,
          ),
        ),
        child: Text(
          this.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
          ),
        ),
        onPressed: () {
          this.onPress();
        },
      ),
    );
  }
}
