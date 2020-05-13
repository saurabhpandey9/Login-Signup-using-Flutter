import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  double _opacity=1;

  double windowHeight=0;
  double windowWidth=0;
  double loginYoffset=0;
  double loginXoffset=0;
  double signupYoffset=0;
  double loginwidth=0;

  @override
  Widget build(BuildContext context) {
    windowHeight=MediaQuery.of(context).size.height;
    windowWidth=MediaQuery.of(context).size.width;
    switch (pageflag){
      case 0:
        bgcolor=Colors.white;
        textcolor=Colors.black;
        loginYoffset=windowHeight;
        signupYoffset=windowHeight;
        break;
      case 1:
        _opacity=1;
        bgcolor=Colors.blue;
        textcolor=Colors.white;
        loginYoffset=230;
        loginXoffset=0;
        loginwidth=0;
        signupYoffset=windowHeight;
        break;
      case 2:
        loginYoffset=windowHeight;
        signupYoffset=240;
        loginYoffset=210;
        loginXoffset=20;
        loginwidth=30;
        _opacity=0.6;
        break;
      default :

    }
    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: (){
            setState(() {
              pageflag=0;
            });
          },
          child: AnimatedContainer(
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
                        pageflag=1;
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
          ),
        ),
        AnimatedContainer(
          width: windowWidth-loginwidth,
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 1000),
          transform: Matrix4.translationValues(loginXoffset, loginYoffset, 0),
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(_opacity),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
          ),

          child: Column(

            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                    "Please Login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 300,
//                  height: 200,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    )
                  ),
                  autofocus: false,

                ),
              ),
              Container(
                width: 300,
//                  height: 200,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 20,
                    )
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.only(
                    right: 30,
                  left: 30,
                  top: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    pageflag=2;
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  margin: EdgeInsets.only(
                    right: 30,
                    left: 30,
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),

        ),
        AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: Duration(milliseconds: 1000),
          transform: Matrix4.translationValues(0, signupYoffset, 0),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              )
          ),
          child: Column(

            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  top: 30,
                ),
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

              ),
              Container(
                margin: EdgeInsets.only(
                  top: 20,
                ),
                width: 300,
//                  height: 200,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      )
                  ),
                  autofocus: false,

                ),
              ),
              Container(
                width: 300,
//                  height: 200,
                margin: EdgeInsets.only(
                  top: 20,
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      labelStyle: TextStyle(
                        fontSize: 20,
                      )
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(
                  right: 30,
                  left: 30,
                  top: 30,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    pageflag=1;
                  });
                },
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(15),
                  margin: EdgeInsets.only(
                    right: 30,
                    left: 30,
                    top: 30,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Back To Login",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),

        ),
      ],
    );
  }
}




