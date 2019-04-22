import 'package:facebook_messenge_ui/widget/chats.dart';
import 'package:facebook_messenge_ui/widget/header.dart';
import 'package:facebook_messenge_ui/widget/search.dart';
import 'package:facebook_messenge_ui/widget/story.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  var data = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.white,
        padding:
            EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return data[index];
          },
        ),
      ),
    );
  }
}
