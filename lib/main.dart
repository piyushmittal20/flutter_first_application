import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _jokes = [
    {"question": "What gets wetter the more it dries?", "answer": "A towel."},
    {
      "question":
          "What word is spelled incorrectly in every single dictionary?",
      "answer": "Incorrectly."
    },
    {
      "question": "What never asks a question but gets answered all the time?",
      "answer": "Your cellphone."
    },
    {
      "question": " What goes up but never ever comes down?",
      "answer": "Your age"
    }
  ];

  var _jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == "next") {
      if (_jokeIndex != _jokes.length - 1) {
        setState(() {
          _jokeIndex++;
        });
      } else {
        _jokeIndex = 0;
      }
    } else if (direction == "previous") {
      if (_jokeIndex != 0) {
        setState(() {
          _jokeIndex--;
        });
      }
    } else {
      _jokeIndex = _jokes.length - 1;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Question(
              question: _jokes[_jokeIndex]["question"] as String,
            ),
            Answer(
              answer: _jokes[_jokeIndex]["answer"] as String,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("previous");
                    },
                    child: Icon(
                      Icons.arrow_left_rounded,
                      size: 40,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15, 0, 15, 15),
                  child: FloatingActionButton(
                    onPressed: () {
                      changeJokeIndex("next");
                    },
                    child: Icon(
                      Icons.arrow_right_rounded,
                      size: 50,
                    ),
                    backgroundColor: Colors.orange,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
