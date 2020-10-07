import 'member.dart';
import 'member_info.dart';
import 'package:flutter/material.dart';

class TileStructure extends StatelessWidget {
  final Member member;
  TileStructure(this.member);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 7.6, right: 7.6, top: 18),
      height: MediaQuery.of(context).size.height / 8.5,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: Hero(
              tag: member.name,
              child: Container(
                width: 60.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(member.profilePic),
                  ),
                ),
              ),
            ),
            title: Text(
              member.name,
              style: TextStyle(
                color: Colors.grey[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              member.status,
              style: TextStyle(
                fontSize: 13.5,
                color: Colors.grey[800],
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.purple,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (ctx) => MemberDetailScreen(member)));
              },
            ),
          ),
        ),
      ),
    );
  }
}
