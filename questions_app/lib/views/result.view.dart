import 'package:flutter/material.dart';


class ResultView extends StatelessWidget {

  final void Function() action;
  final totalScore;
  
  ResultView({
    @required this.action,
    this.totalScore = 0
    });

  
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Text(
                "Congratulations your score was $totalScore !!!", 
                style: TextStyle(fontSize: 28,),
              ),
              FlatButton(
                textColor: Colors.amber,
                child: Text("RESTART", style: TextStyle(fontSize: 18),),
                onPressed: action ,
                
              )
            ],
          ),
        );
  }
}