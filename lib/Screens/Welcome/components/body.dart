import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:IOSDMaitApp/Screens/Welcome/components/background.dart';
import 'package:IOSDMaitApp/components/rounded_button.dart';
//import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:provider/provider.dart';
//import 'package:MyNewLogin/MyCard.dart';
import 'package:IOSDMaitApp/Screens/DeveloperScreen.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen

    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 35),
          Container(
            //height: 10,
            margin: EdgeInsets.fromLTRB(18, 0.8, 18, 1.6),
            padding: EdgeInsets.all(4),
            child: Image.asset('assets/images/logoNew.png'),
          ),
          Container(
            color: Colors.teal,
            child: Card(
              //color: Colors.teal,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              elevation: 0,
              child: Container(
                height: size.height / 2.3,
                width: size.width / 1.21,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'LobsterTwo',
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "IOSD-MAIT ",
                          style: TextStyle(
                            letterSpacing: 1.2,
                            fontSize: 39,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue[400],
                          ),
                        ),
                        Divider(
                          thickness: 5,
                          height: 45,
                          indent: 50,
                          endIndent: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 3),
                          child: Container(
                            child: Text(
                              "We provide a platform for developers to come together and create projects, discuss ideas and learn in a competitive healthy environment.We mentor students and organize workshops that covers topics like Web & Mobile Development, Machine Learning, Artificial Intelligence, Cloud, and the other latest technologies.",
                              maxLines: 10,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 15,
                                //fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          RoundedButton(
            text: "Let's Start Building",
            press: () async {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (ctx) => DevScreen()));
            },
          ),
          Container(
            //height: size.height / 2.3,
            width: size.width / 1.15,
            height: 100,

            child: _socilaMediaHandles(),
            //color: Colors.red,
          ),
        ],
      ),
    );
  }

  _socilaMediaHandles() {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 2, right: 2, top: 6),
      height: MediaQuery.of(context).size.height / 7,
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.teal,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _socialMediaIconBotton(
                size: size,
                context: context,
                icon: FontAwesomeIcons.facebookF,
                url: 'https://www.facebook.com/IOSDMAIT/',
              ),
              _socialMediaIconBotton(
                size: size,
                context: context,
                icon: FontAwesomeIcons.twitter,
                url: 'https://www.twitter.com/iosdofficial',
              ),
              _socialMediaIconBotton(
                size: size,
                context: context,
                icon: FontAwesomeIcons.instagram,
                url: 'https://www.instagram.com/iosdmait/',
              ),
              _socialMediaIconBotton(
                  size: size,
                  context: context,
                  icon: FontAwesomeIcons.linkedinIn,
                  url: 'https://www.linkedin.com/company/iosdofficial'),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _socialMediaIconBotton(
      {Size size, BuildContext context, String url, IconData icon}) {
    return GestureDetector(
      onTap: () => launch(url),
      child: Container(
        height: size.width / 8,
        width: size.width / 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Theme.of(context).buttonColor),
        child: Icon(icon, color: Colors.grey),
      ),
    );
  }
}
