import 'package:captain_marvel/models/api.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'dart:convert';

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
    return jsonResponse.map((comic) => new Captain.fromJson(comic)).toList();
  } else {
    throw Exception('Failed to load comics from API');
  }
}
