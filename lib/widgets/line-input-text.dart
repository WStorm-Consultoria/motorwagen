import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LineInputText extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType inputType;
  final int length;
  final EdgeInsetsGeometry padding;
  final bool isObscure;

  LineInputText(
      {this.controller,
      this.label,
      this.inputType = TextInputType.text,
      this.length = 999,
      this.isObscure = false,
      this.padding = const EdgeInsets.only(left: 30, right: 30)});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: this.padding,
      child: TextField(
        controller: this.controller,
        keyboardType: this.inputType,
        obscureText: isObscure,
        inputFormatters: [LengthLimitingTextInputFormatter(length)],
        decoration: InputDecoration(
          labelText: this.label,
          labelStyle: TextStyle(color: Color(0XFF666666)),
          enabledBorder: UnderlineInputBorder(
            borderSide: new BorderSide(
              color: Color(0XFF666666),
              width: 1.5,
            ),
          ),
          counterText: "",
        ),
        style: TextStyle(color: Color(0XFF666666)),
      ),
    );
  }
}
