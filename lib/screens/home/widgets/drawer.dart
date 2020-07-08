import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

drawer(BuildContext context) {
  return ListView(
    padding: EdgeInsets.all(8.0),
    children: <Widget>[
      SizedBox(
        height: 12,
      ),
      ListTile(
        title: Text(
          'X',
          style: TextStyle(color: Colors.grey, fontSize: 32),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'VIDEOS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'CHARACTERS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'COMICS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'MOVIES',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'TV SHOWS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'GAMES',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'NEWS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              IconButton(
                icon: Icon(
                  Icons.navigate_next,
                  color: Colors.red,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, bottom: 10, top: 10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'CULTURE AND LIFESTYLE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
        child: Row(children: <Widget>[
          Text(
            'PODCASTS',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
        child: Row(children: <Widget>[
          Text(
            'SHOP',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 8),
        child: Row(children: <Widget>[
          Text(
            'MARVEL MASTERCARD®',
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ]),
      ),
      SizedBox(
        height: 50,
      ),
      Padding(
        padding: const EdgeInsets.all(0),
        child: Divider(color: Colors.grey),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
        child: Text(
          'MARVEL INSIDER',
          style: TextStyle(
              color: Color.fromRGBO(232, 182, 62, 1),
              fontSize: 12,
              fontFamily: 'RobotoCondensed-Bold'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
        child: Text(
          'SIGN IN',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, top: 10, bottom: 10),
        child: Text(
          'JOIN',
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(0),
        child: Divider(color: Colors.grey),
      ),
      Wrap(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
      Container(
        width: MediaQuery.of(context).size.width * 1,
        color: Colors.white,
        padding: const EdgeInsets.only(top: 15, bottom: 50),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Image(
                  image: AssetImage('assets/images/footer-promo-image3.png'),
                  width: 70,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'MARVEL INSIDER',
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'RobotoCondensed-Bold'),
                      ),
                      Text(
                        'Get Rewarded for Being a Marvel Fan',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: Row(
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
                            fontSize: 14,
                            color: Colors.black,
                            fontFamily: 'RobotoCondensed-Bold'),
                      ),
                      Text(
                        '6 Card Designs—Unlimited Cashback',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                      ),
                    ]),
              ],
            ),
          ),
        ]),
      )
    ],
  );
}
