import 'package:quizplanet/quiz_brain.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

QuizBrain quizBrain = QuizBrain();

class IntroEasy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "EASY CATEGORY",
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: Image.asset("assets/images/easy.jpg")),
              SizedBox(
                height: 10,
              ),
              Text(
                "EASY",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              Text(
                " Whether it's a general knowledge quiz you're after or something more specific  we've also rounded up a selection of easy quiz questions, for those just looking for an excuse to learn new facts!",
                style: TextStyle(color: Colors.white),
              ),
              RaisedButton(
                color: Colors.purple,
                child: Text("LET'S GO!"),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => EasyQuiz()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EasyQuiz extends StatefulWidget {
  @override
  _EasyQuizState createState() => _EasyQuizState();
}

class _EasyQuizState extends State<EasyQuiz> {
  int correctcount = 0, wrongcount = 0;
  List<Icon> scoreKeeper = [];
  void checkAnswer(String userpicked) {
    String correct = quizBrain.getAnswer();
    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();
        quizBrain.reset();
        scoreKeeper = [];
        correctcount = 0;
        wrongcount = 0;
      } else {
        if (userpicked == correct) {
          correctcount = correctcount + 1;
          scoreKeeper.add(
            Icon(
              Icons.check,
              color: Colors.green,
            ),
          );
        } else {
          wrongcount = wrongcount + 1;
          scoreKeeper.add(
            Icon(
              Icons.close,
              color: Colors.red,
            ),
          );
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "QUIZ",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                color: Colors.green,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: Color(0xff004D40),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        correctcount.toString(),
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.redAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        wrongcount.toString(),
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontSize: 40,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.purple,
                        Colors.blue,
                      ]),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1.0, // soften the shadow
                          spreadRadius: 0, //extend the shadow
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      quizBrain.getQuestion(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25.0,
                          color: Colors.white,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                      ),
                    ]),
                child: FlatButton(
                  textColor: Colors.white,
                  child: Text(
                    quizBrain.o1(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  onPressed: () {
                    //The user picked true.
                    checkAnswer("A");
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                      ),
                    ]),
                child: FlatButton(
                  child: Text(
                    quizBrain.o2(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer("B");
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                      ),
                    ]),
                child: FlatButton(
                  child: Text(
                    quizBrain.o3(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer("C");
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.purple,
                      Colors.blue,
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 1.0, // soften the shadow
                        spreadRadius: 0, //extend the shadow
                      ),
                    ]),
                child: FlatButton(
                  child: Text(
                    quizBrain.o4(),
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    //The user picked false.
                    checkAnswer("D");
                  },
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: scoreKeeper,
            ),
          )
        ],
      ),
    );
  }
}
