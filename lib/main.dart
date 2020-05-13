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

  var bgcolor=Colors.white;
  var textcolor=Colors.black;
  int pageflag=0;

  @override
  Widget build(BuildContext context) {
    switch (pageflag){
      case 0:
        bgcolor=Colors.white;
        textcolor=Colors.black;
        break;
      case 1:
        bgcolor=Colors.blue;
        textcolor=Colors.white;
        break;
      default :

    }
    return AnimatedContainer(
      curve: Curves.fastLinearToSlowEaseIn,
      duration: Duration(milliseconds: 1000),
      color: bgcolor,
      child: Column(
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
                    color: textcolor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Welcome to developerdesk9",
                  style: TextStyle(
                    color: textcolor,
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

            child: GestureDetector(

              onTap: (){
                setState(() {
                  pageflag=pageflag==0 ? 1:0 ;
                });
              },

              child: Container(
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
            ),

          ),
        ],
      ),
    );
  }
}




