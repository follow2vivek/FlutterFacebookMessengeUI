import 'package:flutter/material.dart';
import 'package:facebook_messenge_ui/utils/string.dart';

class Chats extends StatelessWidget {
  var data = <Widget>[
    chats("Deshmukh", "Hi, how are you?", true),
    chats("Vijay", "Say hi to new Facebook friend", false),
    chats("Akhilesh", "Hi, how are you?", true)
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: data,
      ),
    );
  }

  static Widget chats(String name, String msg, bool readStatus) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(profileUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Medium',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Row(
                    children: <Widget>[
                      Text(
                        msg,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          color: readStatus ? Colors.grey[400] : Colors.black,
                          fontSize: 16,
                          fontFamily: 'Regular',
                        ),
                      ),
                    ],
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
