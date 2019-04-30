import 'package:facebook_messenge_ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:facebook_messenge_ui/utils/string.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Chats extends StatelessWidget {
  final data = <Widget>[
    chats("Deshmukh", "Hi, how are you?", profileUrl, true, 0),
    chats("Vijay", "Say hi to new Facebook friend friend friend",
        userProfileUrl1, false, 1),
    chats("Akhilesh", "Hi, how are you?", userProfileUrl2, true, 2),
    chats("Dhananjay", "Hi, how are you?", userProfileUrl1, false, 0)
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: data,
    );
  }

  static Widget chats(
      String name, String msg, String imgUrl, bool readStatus, int status) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Slidable(
        child: Row(
          children: <Widget>[
            status == 0
                ? Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(imgUrl),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                : status == 1 ? storyOnline(imgUrl) : storyOffline(),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Medium',
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Flexible(
                        child: Text(
                          msg,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            color: colorGreySubTitle,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      Text(
                        " 30 Apr",
                        style: TextStyle(
                          color: colorGreySubTitle,
                          fontSize: 14,
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
        delegate: SlidableScrollDelegate(),
        actionExtentRatio: 0.15,
        actions: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorBlue,
            ),
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.call,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.videocam,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
        secondaryActions: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.black,
              size: 20,
            ),
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorRed,
            ),
            child: Icon(
              Icons.delete,
              color: Colors.white,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}

Widget storyOnline(String img) {
  return Stack(
    children: <Widget>[
      Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
              img,
            ),
            fit: BoxFit.fill,
          ),
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
            color: Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 3),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: colorGreen,
              shape: BoxShape.circle,
            ),
          ),
        ),
      )
    ],
  );
}

Widget storyOffline() {
  return Container(
    width: 55,
    height: 55,
    padding: EdgeInsets.all(3),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
      border: Border.all(
        color: colorBlue,
        width: 3,
      ),
    ),
    child: Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(
            profileUrl,
          ),
          fit: BoxFit.fill,
        ),
      ),
    ),
  );
}
