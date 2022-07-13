class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Who was invented Rubik Cube?",
    [
      Answer("Herling Rubik", false),
      Answer("Marcus Rubik", false),
      Answer("Erno Rubik", true),
      Answer("Novack Rubik", false),
    ],
  ));

  list.add(Question(
    "What the first call before changed to Rubik Cube?",
    [
      Answer("Magic Cube", true),
      Answer("Erno Cube", false),
      Answer("Toy Cube", false),
      Answer("Mega Cube", false),
    ],
  ));

  list.add(Question(
    "How many surface in area of one face?",
    [
      Answer("32", false),
      Answer("48", false),
      Answer("58", false),
      Answer("56", true),
    ],
  ));

  list.add(Question(
    "Erno Rubik design Rubik Cube based on geometry.",
    [
      Answer("True", true),
      Answer("False", false),
    ],
  ));

  return list;
}
