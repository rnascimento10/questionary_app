import 'package:flutter/material.dart';
import 'components/question.component.dart';
import 'components/response.component.dart';


class QuestionaryView extends StatelessWidget {
  final void Function(int) action;
  final String questionText;
  final List<Map<String, Object>> answers;

  QuestionaryView({
      @required this.action,
      @required this.questionText,
      @required this.answers
      });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Question(questionText),
        ...answers.map((answer) => Response(answer["description"], () => action(answer["score"]))).toList(),
      ],
    );
  }
}
