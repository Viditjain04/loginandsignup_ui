import 'package:flutter/material.dart';
import 'main.dart';
import 'top_design.dart';

class signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/myapp': (BuildContext context) => new MyApp(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class SignupPage extends StatefulWidget {
  SignupPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black12,
      body: Stack(
        children: <Widget>[
          TopBar(),
          Container(
            padding: EdgeInsets.fromLTRB(270.0, 10.0, 0.0, 0.0),
            child: Text(
              '.......',
              style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 90.0, 0.0, 0.0),
            child: Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.purpleAccent,
                  fontSize: 65.0,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 200.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Nick Name',
                      fillColor: Colors.grey[300],
                      hoverColor: Colors.purple,
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 3.0)),
                      filled: true,
                      labelStyle: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  autocorrect: true,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      fillColor: Colors.grey[300],
                      hoverColor: Colors.purple,
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 3.0)),
                      filled: true,
                      labelStyle: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      fillColor: Colors.grey[300],
                      hoverColor: Colors.purple,
                      filled: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 3.0)),
                      labelStyle: TextStyle(
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 15.0,
                ),
                TextField(
                  decoration: InputDecoration(
                      labelText: ' Confirm Password',
                      fillColor: Colors.grey[300],
                      hoverColor: Colors.purple,
                      filled: true,
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.deepPurple, width: 3.0)),
                      labelStyle: TextStyle(
                          fontSize: 19.0,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black)),
                ),
                SizedBox(
                  height: 55.0,
                ),
                Container(
                  height: 40.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.deepPurple,
                    color: Colors.deepPurple,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      onLongPress: () {},
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                          child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          'Go Back',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
