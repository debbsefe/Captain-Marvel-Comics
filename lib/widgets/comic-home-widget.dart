import 'package:captain_marvel/models/api.dart';
// import 'package:captain_marvel/services/api.dart';
import 'package:flutter/material.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'dart:convert';

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

class ComicView extends StatefulWidget {
  @override
  _ComicViewState createState() => _ComicViewState();
}

class _ComicViewState extends State<ComicView> {
  Future<List<Captain>> captain;
  @override
  void initState() {
    super.initState();
    captain = fetchComics();
    print(captain);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      color: Colors.white,
      child: FutureBuilder(
          future: captain,
          builder: (context, snapshot) {
            List<Captain> captainList = snapshot.data;
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: captainList.length,
                itemBuilder: (context, index) {
                  return Text(captainList[index].status);
                });
          }),
    );
  }

  Future<List<Captain>> fetchComics() async {
    final ts = DateTime.now().toString();
    final apikey = '47b584ea6c2bd191508666c800f3b20e';
    final pk = '9d52171bd4220520e6b55b83461a0f344657fa98';
    String generateMd5() {
      try {
        String hash = md5.convert(utf8.encode(ts + pk + apikey)).toString();
        print(hash);
        return hash;
      } catch (e) {
        return e.toString();
      }
    }

    // final comicList =
    //     'https://gateway.marvel.com/v1/public/characters/1010338/comics?apikey=$apikey&ts=$ts&hash=$generateMd5';
    final comicList =
        'https://gateway.marvel.com/v1/public/characters/1010338/comics?apikey=47b584ea6c2bd191508666c800f3b20e&ts=2020&hash=9f8d7faa01a386a2a462f4e8e457bb64';
    final response = await get(comicList);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      print(response.body);
      print(jsonResponse.map((comic) => new Captain.fromJson(comic)).toList());
      return jsonResponse.map((comic) => new Captain.fromJson(comic)).toList();
    } else {
      throw Exception('Failed to load comics from API');
    }
  }
}

//1010338
