import 'package:flutter/material.dart';
import './views/questionary.view.dart';
import './views/result.view.dart';

import 'controllers/question.cotroller.dart';
import 'package:custom_splash/custom_splash.dart';

main() => runApp(_QuestionApp());

class _QuestionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.amber,
        ),
        home: CustomSplash(
          imagePath: 'lib/assets/images/logo.png',
          backGroundColor: Colors.amber,
          animationEffect: 'zoom-in',
          logoSize: 200,
          home: _HomeViewApp(),
          duration: 5000,
          type: CustomSplashType.StaticDuration,
        ));
  }
}

class _HomeViewApp extends StatefulWidget {
  @override
  __HomeViewAppState createState() => __HomeViewAppState();
}

class __HomeViewAppState extends State<_HomeViewApp> {
  var _questionController;
  var _questions = [];

  __HomeViewAppState() {
    _questionController = new QuestionaryController();
    _questions = _questionController.getQuestions();
  }

  @override
  Widget build(BuildContext context) {
    var answers = _questionController.isThereSelectedQuestions
        ? _questions[_questionController.selectedQuestionIndex]["Answer"]
        : null;

    var questionText = _questionController.isThereSelectedQuestions
        ? _questions[_questionController.selectedQuestionIndex]["Question"]
        : "";

    return Scaffold(
        appBar: AppBar(
          title: Text("Questions and answers game"),
        ),
        body: _questionController.isThereSelectedQuestions
            ? QuestionaryView(
                action: _response, questionText: questionText, answers: answers)
            : ResultView(
                action: _restart,
                totalScore: _questionController.totalScore,
              ));
  }

  void _response(int score) {
    if (_questionController.isThereSelectedQuestions) {
      setState(() {
        _questionController.incrementSeletedQuestion();
        _questionController.totalScore += score;
      });
    }

    print("question at index ${_questionController.selectedQuestionIndex}!");
    print("total score ${_questionController.totalScore}!");
  }

  void _restart() {
    setState(() {
      _questionController.restartQuestionary();
      _questionController.totalScore = 0;
    });
  }
}
