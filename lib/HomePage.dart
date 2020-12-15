import 'package:quizplanet/AboutUs.dart';
import 'package:quizplanet/Difficult.dart';
import 'package:quizplanet/Easy.dart';
import 'package:quizplanet/Medium.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.purple,
          title: Text(
            "HOME PAGE",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text(
                  'Main Menu',
                  style: TextStyle(fontSize: 25),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple,
                ),
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.inbox),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Easy"),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => IntroEasy()));
                },
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.inbox),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Medium"),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => IntroMedium()));
                },
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.inbox),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Difficult"),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => IntroHard()));
                },
              ),
              Divider(
                color: Colors.grey,
              ),
              ListTile(
                title: Row(
                  children: [
                    Icon(Icons.info),
                    SizedBox(
                      width: 10,
                    ),
                    Text("About Us"),
                  ],
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => AboutUs()));
                },
              ),
              Divider(
                color: Colors.grey,
              )
            ],
          ),
        ),
        body: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 2,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Easy category",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                              RaisedButton(
                                child: Text("Explore"),
                                color: Colors.black,
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              IntroEasy()));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Medium category",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                              RaisedButton(
                                child: Text("Explore"),
                                color: Colors.black,
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              IntroMedium()));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Hard category",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 25.0,
                                    color: Colors.white,
                                    decoration: TextDecoration.none),
                              ),
                              RaisedButton(
                                child: Text("Explore"),
                                color: Colors.black,
                                textColor: Colors.white,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              IntroHard()));
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
