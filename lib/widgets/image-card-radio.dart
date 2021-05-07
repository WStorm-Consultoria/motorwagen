import 'package:flutter/material.dart';

class ImageCardRadio extends StatelessWidget {
  final cardFlag;
  final number;
  final groupValue;
  final onChanged;
  final value;

  ImageCardRadio(
      {Key key,
      this.cardFlag,
      this.number,
      this.groupValue,
      this.onChanged,
      this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (value != groupValue) {
          onChanged(value);
        }
      },
      child: Container(
        padding: EdgeInsets.only(top: 15, left: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Radio<int>(
              groupValue: groupValue,
              value: value,
              onChanged: (newValue) {
                onChanged(newValue);
              },
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: Image.asset(
                cardFlag,
                height: 32,
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                '************$number',
                style: TextStyle(fontSize: 18, color: Color(0xFF666666)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
