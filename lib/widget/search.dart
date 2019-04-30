import 'package:facebook_messenge_ui/utils/colors.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        hintColor: Colors.transparent,
      ),
      child: Container(
        height: 42,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: colorGreySubTitle,
              fontSize: 16,
              fontFamily: 'Regular',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(
              Icons.search,
              color: colorGreySubTitle,
            ),
            fillColor: colorGreyBg,
            filled: true,
          ),
        ),
      ),
    );
  }
}
