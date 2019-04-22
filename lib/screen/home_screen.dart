import 'package:facebook_messenge_ui/widget/chats.dart';
import 'package:facebook_messenge_ui/widget/header.dart';
import 'package:facebook_messenge_ui/widget/search.dart';
import 'package:facebook_messenge_ui/widget/story.dart';
import 'package:flutter/material.dart';
import 'package:facebook_messenge_ui/utils/string.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.fromLTRB(16, MediaQuery.of(context).padding.top, 16, 16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Header(),
              SizedBox(
                height: 16,
              ),
              Search(),
              SizedBox(
                height: 16,
              ),
              Story(),
              Chats()
            ],
          ),
        ),
      ),
    );
  }
}
