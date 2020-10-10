import 'member.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:MyNewLogin/MyCard.dart';

class MemberDetailScreen extends StatelessWidget {
  final Member member;
  MemberDetailScreen(this.member);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Scaffold(
        backgroundColor: Colors.purple[100],
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            member.name,
            style: TextStyle(
              letterSpacing: 0.8,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[_buildContent(context)],
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        // color: Colors.deepPurple,
        margin: EdgeInsets.only(left: 8, right: 8, top: 20),
        height: MediaQuery.of(context).size.height / 1.19,
        width: MediaQuery.of(context).size.width,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Hero(
                tag: member.name,
                child: GestureDetector(
                  child: Container(
                    width: 160.0,
                    height: 160.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 5.0),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(member.profilePic),
                      ),
                    ),
                  ),
                  onTap: null,
                  //  () {
                  //   Navigator.of(context)
                  //       .push(MaterialPageRoute(builder: (ctx) => MyApp()));
                  // },
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    member.name,
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff3972CF)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          radius: 5.0,
                          backgroundColor: Colors.green,
                        ),
                      ),
                      Text(
                        member.status,
                        style: TextStyle(
                            color: Colors.grey[800],
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Divider(
                    height: 15,
                    thickness: 4,
                    indent: 120,
                    endIndent: 110,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 11),
                    child: Container(
                        child: Text(
                      member.year +
                          ' year Student of ' +
                          member.department +
                          ' department',
                      maxLines: 7,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          color: Colors.grey[900], fontWeight: FontWeight.w700),
                    )),
                  ),
                  Divider(
                    height: 6,
                    thickness: 4,
                    indent: 70,
                    endIndent: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 22.0, vertical: 11),
                    child: Container(
                      child: Text(
                        member.aboutMe,
                        maxLines: 5,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: 'LobsterTwo',
                          fontSize: 16,
                          letterSpacing: 0.4,
                          //fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 15,
                    thickness: 3,
                    indent: 30,
                    endIndent: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        member.linkedInURL == null
                            ? Container()
                            : _socialMediaIconBuilder(
                                size: size,
                                context: context,
                                iconPath:
                                    'assets/images/linkdin light theme.png',
                                url: member.linkedInURL,
                              ),
                        member.githubURL == null
                            ? Container()
                            : _socialMediaIconBuilder(
                                size: size,
                                context: context,
                                iconPath: 'assets/images/github.png',
                                url: member.githubURL,
                              ),
                        member.facebookURL == null
                            ? SizedBox.shrink()
                            : _socialMediaIconBuilder(
                                size: size,
                                context: context,
                                iconPath:
                                    'assets/images/facebook light theme.png',
                                url: member.facebookURL,
                              ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  GestureDetector _socialMediaIconBuilder(
      {Size size, BuildContext context, String url, String iconPath}) {
    return GestureDetector(
      onTap: () => launch(url),
      child: Container(
        height: size.width / 8,
        width: size.width / 8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Theme.of(context).buttonColor),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Image.asset(iconPath),
        ),
      ),
    );
  }
}
