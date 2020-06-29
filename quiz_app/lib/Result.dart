import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'you did it';
    if (resultScore > 20) {
      resultText = ' Great Job !!';
    } else if (resultScore < 20) {
      resultText = 'Could DO better !!';
    } else {
      resultText = 'Better luck next time';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
    );
  }
}
