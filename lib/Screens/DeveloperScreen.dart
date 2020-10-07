import 'package:flutter/material.dart';
import 'tile_strcture.dart';
import 'member.dart';
import 'package:IOSDMaitApp/completeMemberInfo.dart';

class DevScreen extends StatelessWidget {
 List<Member> members = AllMembers.members;
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: Text(
            "IOSD-DEVELOPERS",
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: Stack(
            children: <Widget>[_buildContent()],
          ),
        ),
        backgroundColor: Colors.purple[100],
      ),
    );
  }

  Widget _buildContent() {
    return Container(
      child: ListView.builder(
        itemCount: members.length,
        //itemCount: 5,
        itemBuilder: (BuildContext ctx, int index) {
          return TileStructure(members[index]);
        },
      ),
    );
  }
}
