import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.deepPurple[500],
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/img.png'),
                ),
                Text(
                  "Sarvesh Tiwari",
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Galada',
                    color: Colors.white,
                    // fontWeight:FontWeight.bold,
                    letterSpacing: 2.0,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 2.0,
                  width: 100.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: .5,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                    fontSize: 32,
                    fontFamily: 'LobsterTwo',
                    color: Colors.teal.shade100,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    //decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.white,
                    thickness: 1.5,
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 35,
                    ),
                    title: Text(
                      " +91 8800000074",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        wordSpacing: 3,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 25),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 35,
                    ),
                    title: Text(
                      " SarveshDev@flutter.com",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        wordSpacing: 2,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                /* Container(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 6, horizontal: 35),
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                        size: 35,
                      ),
                      SizedBox(width: 20),
                      Text(
                        " sarveshFlutterDev@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
          )),
    );
  }
}
