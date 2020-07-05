import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

heroImage(BuildContext context) {
  return Image.asset(
    'assets/images/top-image.jpg',
    fit: BoxFit.cover,
    height: MediaQuery.of(context).size.height * 0.4,
  );
}

heroText(BuildContext context) {
  return ClipPath(
    clipper: DiagonalPathClipperTwo(),
    child: Container(
      height: MediaQuery.of(context).size.height * 0.3,
      padding: const EdgeInsets.all(30),
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'CAROL DANVERS',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'RobotoCondensed-Bold'),
          ),
          Text(
            'CAPTAIN MARVEL',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'RobotoCondensed-Bold'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Carol Danvers becomes one of the universe\'s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}

socialLinks(BuildContext context) {
  return Container(
    color: Colors.white,
    child: Row(children: <Widget>[
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.1,
      ),
      Text(
        'FOLLOW',
        style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
            fontSize: 20,
            fontFamily: 'RobotoCondensed-Bold',
            fontWeight: FontWeight.w500),
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
      ),
      IconButton(
        icon: FaIcon(FontAwesomeIcons.facebook),
        onPressed: null,
      ),
      IconButton(icon: FaIcon(FontAwesomeIcons.twitter), onPressed: null)
    ]),
  );
}

Widget mainImage() {
  return Image.asset(
    'assets/images/carol.jpg',
    fit: BoxFit.cover,
  );
}

mainText(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Text(
          'CAPTAIN MARVEL',
          style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.w700,
              color: Colors.black,
              fontFamily: 'RobotoCondensed-Bold'),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Near death, Carol Danvers was transformed into a powerful warrior for the Kree. Now, returning to Earth years later, she must remember her past in order to to prevent a full invasion by shapeshifting aliens, the Skrulls.',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          color: Color.fromRGBO(230, 36, 41, 1),
          child: FlatButton(
            onPressed: null,
            child: Text(
              'WATCH NOW',
              style: TextStyle(color: Colors.white),
            ),
          ),
        )
      ],
    ),
  );
}
