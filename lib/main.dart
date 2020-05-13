import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            child: LoginPage(),
          ),
        ),

      ),

    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),

              child: Text (
                "Developerdesk9.Inc",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                "Welcome to developerdesk9",
                style: TextStyle(
                  fontSize: 15
                ),
              ),
            )
          ],
        ),

        Container(
          child: Image.asset("assets/images/lock_icon.png")

        ),

        Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.symmetric(
              horizontal: 30
          ),
          decoration: BoxDecoration(
            color: Colors.black,

            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              "Get Started",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

        ),
      ],
    );
  }
}




