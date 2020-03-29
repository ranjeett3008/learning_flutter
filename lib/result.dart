import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    String resultText ;
    if(resultScore <=19){
      resultText='You are awesome and likeable';
    }
    else if(resultScore >20)
    {
      resultText='You are awesome and likeable';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        children: <Widget>[
          Text(
          resultPhrase, 
          style: TextStyle(fontSize: 36, 
          fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
            ),
            FlatButton(child: Text('Restart quiz!'),onPressed: resetHandler,)
        ],
        
      )
      
    );
  }
}