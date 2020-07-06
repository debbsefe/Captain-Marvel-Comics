import 'package:captain_marvel/widgets/comic-home-widget.dart';
import 'package:captain_marvel/widgets/footer.dart';
import 'package:captain_marvel/widgets/main-home-widget.dart';
import 'package:captain_marvel/widgets/promo-widget.dart';
import 'package:captain_marvel/widgets/top-home-widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(32, 32, 32, 1),
          title: Text(
            'MARVEL',
            style: TextStyle(
                fontSize: 50,
                backgroundColor: Colors.red,
                letterSpacing: -4,
                fontWeight: FontWeight.w700),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: null,
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            heroImage(context),
            heroText(context),
            socialLinks(context),
            mainImage(),
            mainText(context),
            SizedBox(
              height: 50,
            ),
            latestNews(),
            gridView(),
            videoView(context),
            ComicView(),
            promo(context),
            footer(),
          ],
        ));
  }
}

//TODO:Animate appbar title, consider svg for app bar title
