import 'package:flutter/material.dart';

class BlueTitle extends StatelessWidget {
  final String title;
  final EdgeInsetsGeometry padding;
  BlueTitle({this.title, this.padding = const EdgeInsets.only(left: 40)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      child: Text(
        this.title,
        style: TextStyle(
          color: Color(0XFF387DE3),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
