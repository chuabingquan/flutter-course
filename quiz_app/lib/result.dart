import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'We\'re quite different';
    } else if (resultScore <= 12) {
      resultText = 'We have some similaraties';
    } else if (resultScore <= 16) {
      resultText = 'We are pretty similar!';
    } else {
      resultText = 'Yo boi!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
            textColor: Colors.blue,
            child: Text('Restart Quiz'),
            onPressed: resetHandler)
      ],
    );
  }
}
