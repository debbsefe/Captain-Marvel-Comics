import 'package:captain_marvel/screens/home/widgets/comic-home-widget.dart';
import 'package:captain_marvel/screens/home/widgets/drawer.dart';
import 'package:captain_marvel/screens/home/widgets/footer.dart';
import 'package:captain_marvel/screens/home/widgets/main-home-widget.dart';
import 'package:captain_marvel/screens/home/widgets/promo-widget.dart';
import 'package:captain_marvel/screens/home/widgets/top-home-widget.dart';
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
                letterSpacing: -2,
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
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.black,
          ),
          child: Drawer(child: drawer(context)),
        ),
        body: ListView(
          children: <Widget>[
            heroImage(context),
            heroText(context),
            socialLinks(context),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Divider(color: Colors.grey),
            ),
            SizedBox(
              height: 50,
            ),
            mainImage(),
            mainText(context),
            SizedBox(
              height: 100,
            ),
            latestNews(),
            gridView(context),
            videoView(context),
            comicHeading(),
            ComicHomeView(),
            promo(context),
            footer(),
          ],
        ));
  }
}

//TODO:Animate appbar title, consider svg for app bar title
