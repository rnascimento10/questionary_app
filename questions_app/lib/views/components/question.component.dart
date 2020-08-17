import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String texto;

  Question(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      padding: EdgeInsets.all(15),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28, ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
