import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'top_design.dart';
import 'signup_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignupPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter login_page',
      theme: ThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.black54,
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
                  color: Colors.grey),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20.0, 90.0, 0.0, 0.0),
            child: Text(
              'Hello',
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(22.0, 155.0, 0.0, 0.0),
            child: Text(
              'There',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 290.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
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
                  height: 20.0,
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
                  height: 8.0,
                ),
                Container(
                  alignment: Alignment
                      .centerRight, // use alignment instead of more padding
                  padding: EdgeInsets.only(top: 15, left: 20.0),
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      'forgot password',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
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
                          'Login',
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                Container(
                  height: 40.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Center(
                        child: Icon(
                          Icons.computer,
                          color: Colors.deepPurple,
                        ),
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Center(
                        child: Text(
                          'Log In With Facebook',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 650.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  'New User ?',
                  style: TextStyle(color: Colors.grey, fontSize: 15.0),
                ),
                SizedBox(
                  width: 8.0,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('/signup');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 15.0,
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
