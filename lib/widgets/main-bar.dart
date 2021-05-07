import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  MainAppBar({
    Key key,
  })  : preferredSize = Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        alignment: Alignment.centerLeft,
        child: Image.asset(
          'assets/images/logo.png',
          height: 80,
        ),
      ),
      iconTheme: IconThemeData(color: Colors.grey),
      backgroundColor: Color(0xFFF4F4F4),
      elevation: 1,
      automaticallyImplyLeading: true,
    );
  }
}
