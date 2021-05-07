import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  String title;
  Function onPressed;

  BlueButton({key: Key, this.title, this.onPressed});

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
          primary: Color(0XFF387DE3),
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
          this.onPressed();
        },
      ),
    );
  }
}
