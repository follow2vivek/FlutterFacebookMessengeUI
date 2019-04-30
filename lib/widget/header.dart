import 'package:flutter/material.dart';
import 'package:facebook_messenge_ui/utils/string.dart';
import 'package:facebook_messenge_ui/utils/colors.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                    profileUrl,
                  ),
                  fit: BoxFit.fill,
                ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              'Chats',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Bold',
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorGreyBg,
                ),
                child: Icon(
                  Icons.camera_alt,
                  color: Colors.black,
                  size: 20,
                ),
              ),
            ),
          ),
          Container(
            width: 40,
            height: 40,
            margin: EdgeInsets.only(left: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: colorGreyBg,
            ),
            child: Icon(
              Icons.edit,
              color: Colors.black,
              size: 20,
            ),
          )
        ],
      ),
    );
  }
}
