import 'package:flutter/material.dart';

class OutlineBlueButton extends StatelessWidget {
  final onPressed;
  final title;
  OutlineBlueButton({@required this.onPressed, @required this.title});

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
            primary: Color(0xFFF4F4F4),
            side: BorderSide(
              color: Color(0XFF387DE3),
              style: BorderStyle.solid,
              width: 1.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(
                color: Color(0XFF387DE3),
              ),
            ),
            textStyle: TextStyle(
              fontSize: 16,
            ),
            minimumSize: Size(
              MediaQuery.of(context).size.width,
              50,
            ),
            elevation: 0,
          ),
          child: Text(
            this.title,
            style: TextStyle(
              color: Color(0XFF387DE3),
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: this.onPressed),
    );
  }
}
