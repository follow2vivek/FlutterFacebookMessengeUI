import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(hintColor: Colors.transparent),

      child: Container(
        height: 45,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: Colors.grey[600],
              fontSize: 16,
              fontFamily: 'Regular',
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey[700],
            ),
            fillColor: Colors.grey[200],
            filled: true,
          ),
        ),
      ),
    );
  }
}
