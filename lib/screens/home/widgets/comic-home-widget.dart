import 'package:captain_marvel/models/api.dart';
import 'package:captain_marvel/screens/comics/comics-list.dart';
import 'package:captain_marvel/services/api.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

Widget comicHeading() {
  return Container(
    padding: EdgeInsets.all(30),
    color: Colors.white,
    child: Text(
      'COMICS',
      style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.w800,
          color: Colors.black,
          fontFamily: 'RobotoCondensed'),
    ),
  );
}

class ComicHomeView extends StatefulWidget {
  @override
  _ComicHomeViewState createState() => _ComicHomeViewState();
}

class _ComicHomeViewState extends State<ComicHomeView> {
  final Api _api = Api();

  Future<Captain> captain;

  @override
  void initState() {
    super.initState();
    captain = _api.fetchComics();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.white,
      child: FutureBuilder(
          future: captain,
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            Captain captain = snapshot.data;
            Data data = captain.data;
            List<Results> results = data.results;
            return ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 300),
              child: ListView.builder(
                  itemCount: results.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    Thumbnail thumbnail = results[index].thumbnail;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => ComicList(results: results))),
                        child: FadeInImage.memoryNetwork(
                            placeholder: kTransparentImage,
                            image: thumbnail.path + '.' + thumbnail.extension),
                      ),
                    );
                  }),
            );
          }),
    );
  }
}

//1010338
