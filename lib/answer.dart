import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answer;

  Answer({required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 45),
        child: Text(
          answer,
          style: TextStyle(fontSize: 22.5, fontWeight: FontWeight.normal),
          textAlign: TextAlign.center,
        ));
  }
}
