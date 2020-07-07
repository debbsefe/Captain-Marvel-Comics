import 'package:flutter/material.dart';

Widget latestNews() {
  return Container(
    color: Colors.black,
    padding: const EdgeInsets.fromLTRB(20.0, 35, 0, 35),
    child: Text(
      'LATEST NEWS',
      style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w800,
          color: Colors.white,
          fontFamily: 'RobotoCondensed'),
    ),
  );
}

gridView(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 1,
    color: Colors.black,
    child: GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height),
      children: <Widget>[imageOne(), imageTwo(), imageThree(), imageFour()],
    ),
  );
}

Widget imageOne() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        'assets/images/latestnews1.jpg',
        fit: BoxFit.cover,
        height: 150,
        width: 200,
      ),
      Expanded(
          child: Text(
        'COMICS',
        style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontFamily: 'RobotoCondensed-Bold'),
      )),
      Expanded(
          child: Text(
        'Artist Cory Smith Joins \'Captain Marvel\' As Carol Danvers Enters as the Accuser',
        style: TextStyle(
            // fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'RobotoBold'),
      )),
      SizedBox(
        height: 10,
      )
    ],
  );
}

Widget imageTwo() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        'assets/images/latestnews2.jpg',
        fit: BoxFit.cover,
        height: 150,
        width: 200,
      ),
      Expanded(
          child: Text(
        'COMICS',
        style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontFamily: 'RobotoCondensed-Bold'),
      )),
      Expanded(
          child: Text(
        'A History of Accusers and Captain Marvel\'s New Role',
        style: TextStyle(
            // fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'RobotoBold'),
      )),
      SizedBox(
        height: 10,
      )
    ],
  );
}

Widget imageThree() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        'assets/images/latestnews3.jpg',
        fit: BoxFit.cover,
        height: 150,
        width: 200,
      ),
      Expanded(
          child: Text(
        'CULTURE AND LIFESTYLE',
        style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontFamily: 'RobotoCondensed-Bold'),
      )),
      Expanded(
          child: Text(
        'Peek Inside the Pages of ‘Beware the Flerken!’ With Writer Calliope Glass and Illustrator Rob McClurkan',
        style: TextStyle(
            // fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'RobotoBold'),
      )),
      SizedBox(
        height: 10,
      )
    ],
  );
}

Widget imageFour() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Image.asset(
        'assets/images/latestnews4.jpg',
        fit: BoxFit.cover,
        height: 150,
        width: 200,
      ),
      Expanded(
          child: Text(
        'GAMES',
        style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontFamily: 'RobotoCondensed-Bold'),
      )),
      Expanded(
          child: Text(
        'Marvel Games Comic Connection: MODOK',
        style: TextStyle(
            // fontSize: 26,
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontFamily: 'RobotoBold'),
      )),
      SizedBox(
        height: 10,
      )
    ],
  );
}

videoView(BuildContext context) {
  return Container(
    color: Colors.white,
    padding: EdgeInsets.fromLTRB(30, 30, 30, 0),
    height: MediaQuery.of(context).size.height * 0.9,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'LATEST VIDEOS',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w800,
              color: Colors.black,
              fontFamily: 'RobotoCondensed'),
        ),
        SizedBox(
          height: 20,
        ),
        Image(
          image: AssetImage('assets/images/latestnews4.jpg'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'MARVEL CULTURE AND LIFESTYLE',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Colors.red,
              fontFamily: 'RobotoCondensed-Bold'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'DIY Captain Marvel\'s Star of Hala!',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w400,
              color: Colors.black,
              fontFamily: 'RobotoBold'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Your Marvel Mission was to create Captain Marvel\'s Star of Hala using only safe household items! Lorraine Cink highlights a few of her favorites while making her own Star of Hala!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset(
              'assets/images/latestnews1.jpg',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            Image.asset(
              'assets/images/latestnews2.jpg',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
            Image.asset(
              'assets/images/latestnews3.jpg',
              fit: BoxFit.cover,
              height: 100,
              width: 100,
            ),
          ],
        )
      ],
    ),
  );
}

//TODO:Work on video view
