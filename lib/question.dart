class Question {
  String question;
  String opt1;
  String opt2;
  String opt3;
  String opt4;
  int ans;

  Question(
      {required this.question,
      required this.opt1,
      required this.opt2,
      required this.opt3,
      required this.opt4,
      required this.ans});
}

List<Question> allQuestions = [
  Question(
    question: "1.What is Dart?",
    opt1: "Dart is a object-oriented programming language",
    opt2: "Dart is a object-oriented programming language",
    opt3: "Both of the above",
    opt4: "None of the above",
    ans: 3,
  ),
  Question(
    question: "2. Which of these is not a keyword in dart? ",
    opt1: "factory",
    opt2: "yield",
    opt3: "export",
    opt4: "scan",
    ans: 4,
  ),
  Question(
    question: "3. Which framework uses dart? ",
    opt1: "Django",
    opt2: "Spring",
    opt3: "Flutter",
    opt4: "React",
    ans: 3,
  ),

  Question(
    question: "4. Dart is an ?",
    opt1: "Open-source",
    opt2: "Asynchronous",
    opt3: "Programming language",
    opt4: "All of the above",
    ans: 4,
  ),
  Question(
    question: "5. Dart is originally developed by? ",
    opt1: "Microsoft",
    opt2: "Google",
    opt3: "IBM",
    opt4: "Facebook",
    ans: 2,
  ),
  Question(
    question: "6. What is the extension of Dart file? ",
    opt1: ".dart",
    opt2: ".py",
    opt3: ".java",
    opt4: ".drt",
    ans: 1,
  ),

  Question(
    question: "7. Which keyowrd in Dart is used to create a subclass? ",
    opt1: "extends",
    opt2: "subclass",
    opt3: "super",
    opt4: "none of these",
    ans: 1,
  ),

  Question(
    question: "8. Instance variables in Dart cannot be? ",
    opt1: "final",
    opt2: "const",
    opt3: "Both of these",
    opt4: "None of these",
    ans: 4,
  ),
];
