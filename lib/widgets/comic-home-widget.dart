import 'package:flutter/material.dart';

Widget comicView() {
  return Container(
    padding: EdgeInsets.all(30),
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'COMICS',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontFamily: 'RobotoCondensed'),
        ),
      ],
    ),
  );
}

//1010338
