import 'package:flutter/material.dart';

class Alert {
  static showErrorMessage(context, message) {
    const grey = Color(0xFF666666);
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 10),
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(color: grey))),
            child: Text(
              'Erro',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: grey),
            ),
          ),
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: grey,
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
