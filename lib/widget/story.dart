import 'package:flutter/material.dart';
import 'package:facebook_messenge_ui/utils/string.dart';

class Story extends StatelessWidget {
  final widgets = [
    storyAdd(),
    storyOnline('Anuj', userProfileUrl1),
    storyOffline('Rhishi'),
    storyOnline('John', userProfileUrl2),
    storyOnline('Vivek', userProfileUrl1),
    storyOffline('Rohny'),
    storyOnline('Jitu', userProfileUrl2),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  static Widget storyAdd() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 30,
            ),
          ),
          Text(
            'Your Story',
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.grey[400],
            ),
          )
        ],
      ),
    );
  }

  static Widget storyOnline(String name, String img) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Stack(
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
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              )
            ],
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.grey[400],
            ),
          )
        ],
      ),
    );
  }

  static Widget storyOffline(String name) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: 55,
            height: 55,
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: Colors.blue,
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
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Regular',
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
