import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue, // static property of a class (can be used without instantiating)
        textColor: Colors.white,
        child: Text(this.answerText),
        onPressed: this.selectHandler,
      ),
    );
  }
}