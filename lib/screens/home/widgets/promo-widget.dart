import 'package:flutter/material.dart';

promo(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.7,
    color: Colors.black,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Image.asset(
          'assets/images/marvelpromo.jpg',
          fit: BoxFit.contain,
          height: MediaQuery.of(context).size.height * 0.4,
        ),
        Text(
          'MARVEL HQ',
          style: TextStyle(
              fontSize: 16,
              letterSpacing: 3,
              fontWeight: FontWeight.w400,
              color: Colors.red,
              fontFamily: 'RobotoCondensed-Bold'),
        ),
        Text(
          'Play games and read comics on MarvelHQ.com',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w800,
              fontFamily: 'RobotoBold'),
        ),
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: Container(
            color: Color.fromRGBO(230, 36, 41, 1),
            child: FlatButton(
              onPressed: null,
              child: Text(
                'CHECK IT OUT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
