import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputText extends HookWidget {
  final TextEditingController controller;

  final String label;
  final TextInputType type;
  final TextInputFormatter mask;
  final bool secure;

  InputText(
      {Key key,
      this.label = '',
      this.controller,
      this.type = TextInputType.text,
      this.mask,
      this.secure = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextInputFormatter formatText;

    if (mask != null) {
      formatText = mask;
    } else {
      formatText = FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"));
    }

    return Container(
      margin: EdgeInsets.only(bottom: 15),
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: TextField(
        keyboardType: type,
        controller: controller,
        obscureText: secure,
        inputFormatters: [formatText],
        style: TextStyle(
          fontSize: 16,
          color: Colors.black38,
        ),
        decoration: InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.black12)),
          filled: true,
          fillColor: Colors.white,
          hintText: label,
        ),
      ),
    );
  }
}
