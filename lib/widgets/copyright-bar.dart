import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CopyrightBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Color(0xFF333333),
      width: MediaQuery.of(context).size.width,
      height: 25.0,
      child: Text(
        'Powered by Build Innovation. \u00a9${getYear()}',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 11.0,
          decoration: TextDecoration.none,
        ),
      ),
    );
  }

  String getYear() {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy');
    final String formatted = formatter.format(now);
    return formatted;
  }
}
