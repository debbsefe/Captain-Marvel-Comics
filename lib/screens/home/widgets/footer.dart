import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

footer() {
  return Container(
    padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
    color: Colors.black,
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'ABOUT MARVEL',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'HELP/FAQS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'CAREERS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'INTERNSHIPS',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'ADVERTISING',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'MARVELHQ.COM',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'REDEEM DIGITAL COMICS',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Divider(color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/footer-promo-image1.png'),
              width: 70,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'MARVEL INSIDER',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed-Bold'),
                  ),
                  Text(
                    'Get Rewarded for Being a Marvel Fan',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                  ),
                ]),
          ],
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image(
              image: AssetImage('assets/images/footer-promo-image2.png'),
              width: 70,
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Marvel Mastercard®',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontFamily: 'RobotoCondensed-Bold'),
                  ),
                  Text(
                    '6 Card Designs—Unlimited Cashback',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromRGBO(153, 153, 153, 1),
                    ),
                  ),
                ]),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Divider(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Text(
            'FOLLOW MARVEL',
            style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'RobotoCondensed-Bold',
                letterSpacing: 2),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: FaIcon(FontAwesomeIcons.facebook),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitter),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.instagram),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.twitch),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.youtube),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.snapchat),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.pinterest),
              onPressed: () {
                print('yes');
              },
              color: Colors.grey,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(18.0),
          child: Divider(color: Colors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Terms of Use',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            Text(
              'Privacy Policy',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Your California Privacy Rights',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            Text(
              'Do Not Sell My Info',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Children\'s Online Privacy Policy',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            Text(
              'License Agreement',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              'Interest-Based Ads',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
            Text(
              'Marvel Insider Terms',
              style: TextStyle(
                color: Color.fromRGBO(153, 153, 153, 1),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '\u00a9 2020 MARVEL',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(153, 153, 153, 1),
          ),
        ),
      ],
    ),
  );
}
