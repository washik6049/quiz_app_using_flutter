import 'package:flutter/material.dart';
import 'package:quiz_app_tutorial/models/questions.dart';
import '/screens/add_question_screen.dart';
import '/screens/quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz App Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AddQuestionScreen()),
                );
              },
              child: Text('Teacher'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => QuizScreen(questions: questions)),
                );
              },
              child: Text('Student'), 
            ),
          ],
        ),
      ),
    );
  }
}
