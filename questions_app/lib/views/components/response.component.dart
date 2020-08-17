import 'package:flutter/material.dart';

class Response extends StatelessWidget {
  
  final String text;
  final void Function() onSelectedReponse;
  Response(this.text, this.onSelectedReponse);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: RaisedButton(
                color:Colors.amber,
                textColor: Colors.black,
                child: Text(text),
                onPressed: onSelectedReponse,
              ),
    );
  }
}