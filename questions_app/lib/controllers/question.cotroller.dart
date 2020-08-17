class QuestionaryController {
  var _selectedQuestionIndex = 0;
  var _totalScore = 0;

  bool get isThereSelectedQuestions {
    return _selectedQuestionIndex < _questions.length;
  }

  int get selectedQuestionIndex {
    return _selectedQuestionIndex;
  }

  int get totalScore{
    return _totalScore;
  }
  
  set totalScore(int value){
     (value == 0) ?  
     _totalScore = 0:
    _totalScore += value;
  }

  QuestionaryController();

  final _questions = [
    {
      "Question": "What your favorite color?",
      "Answer": [
        {"description": "White", "score": 10},
        {"description": "Red", "score": 5},
        {"description": "Blue", "score": 2},
        {"description": "Black", "score": 6},
      ]
    },
    {
      "Question": "Whats your favorite animal?",
      "Answer": [
        {"description":"Cat", "score": 10},
        {"description":"Dog","score": 1},
        {"description":"Bird","score": 3},
        {"description":"Horse","score": 6},
      ]
    }
  ];

  List<Map<String, Object>> getQuestions() {
    return _questions;
  }

  void incrementSeletedQuestion() {
    _selectedQuestionIndex++;
  }

  void restartQuestionary() {
    _selectedQuestionIndex = 0;
  }
}
