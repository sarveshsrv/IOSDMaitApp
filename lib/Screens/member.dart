import 'package:flutter/cupertino.dart';

class Member {
  final String name;
  final String year;
  final String department;
  final String profilePic;
  final String aboutMe;
  final String facebookURL;
  final String status;
  final String githubURL;
  final String linkedInURL;

  Member(
      {@required this.name,
      @required this.year,
      @required this.department,
      @required this.profilePic,
      @required this.aboutMe,
      this.facebookURL,
      @required this.status,
      this.githubURL,
      this.linkedInURL});
}
