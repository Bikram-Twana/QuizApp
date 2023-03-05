import 'package:flutter/material.dart';
import 'package:quizapp/question.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Quiz App",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int score = 0;
  int currentQuestion = 0;

  void checkAnswer(int userChooseOption) {
    setState(() {
      if (userChooseOption == allQuestions[currentQuestion].ans &&
          currentQuestion < allQuestions.length - 1) {
        score++;
      }
      if (currentQuestion == allQuestions.length - 1) {
        if (userChooseOption == allQuestions[currentQuestion].ans) {
          score++;
        }
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: const Text("Result"),
                  content: Text(
                      "Your Score is $score out of ${allQuestions.length}"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                          reset();
                        },
                        child: const Text("Reset")) 
                  ],
                ));
        return;
      }
      currentQuestion++;

      // if (currentQuestion == allQuestions.length - 1) {
      //   // for last question, needs decrement so that it can stay on last question screen

      //   if (userChooseOption == allQuestions[currentQuestion--].ans) {
      //     score++;
      //   }
      // } else if (currentQuestion < allQuestions.length) {
      //   if (userChooseOption == allQuestions[currentQuestion].ans) {
      //     score++;
      //   }
      // }
      // currentQuestion++;
    });
  }

  void reset() {
    setState(() {
      score = 0;
      currentQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            reset();
          },
          child: const Icon(Icons.undo_outlined),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //For Question
            SizedBox(
              height: 100,
              width: double.infinity,
              child: Card(
                child: Center(
                    child: Text(
                  "Q. ${allQuestions[currentQuestion].question}",
                  style: const TextStyle(fontSize: 22),
                )),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //opt 1
            GestureDetector(
              onTap: () => checkAnswer(1),
              child: Container(
                height: 30,
                width: double.infinity,
                //color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "1. ${allQuestions[currentQuestion].opt1}",
                  style: const TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //opt 2
            GestureDetector(
              onTap: () => checkAnswer(2),
              child: Container(
                height: 30,
                width: double.infinity,
                //color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "2. ${allQuestions[currentQuestion].opt2}",
                  style: const TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //opt 3
            GestureDetector(
              onTap: () => checkAnswer(3),
              child: Container(
                height: 30,
                width: double.infinity,
                //color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "3. ${allQuestions[currentQuestion].opt3}",
                  style: const TextStyle(fontSize: 16),
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //opt 4
            GestureDetector(
              onTap: () => checkAnswer(4),
              child: Container(
                height: 30,
                width: double.infinity,
                //color: Colors.green,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: Text(
                  "4. ${allQuestions[currentQuestion].opt4}",
                  style: const TextStyle(fontSize: 16),
                )),
              ),
            ),

            const SizedBox(
              height: 6,
            ),

            Card(
              child: Text(
                "Total score: $score out of ${allQuestions.length}.",
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
