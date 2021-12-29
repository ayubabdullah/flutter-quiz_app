import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function reset;
  Result(this.resultScore, this.reset);

  String get resultPhrace {
    String finalResult;
    if (resultScore < 10) {
      finalResult = 'You are fool';
    } else if (resultScore < 15) {
      finalResult = 'You are Not so Bad';
    } else if (resultScore < 20) {
      finalResult = 'You are good';
    } else {
      finalResult = 'You are awesome';
    }
    return finalResult;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrace,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            color: Colors.blue,
            onPressed: reset,
          ),
        ],
      ),
    );
  }
}
