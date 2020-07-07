import 'package:captain_marvel/models/api.dart';
import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:captain_marvel/services/keys.dart';

class Api {
  final ts = DateTime.now().toString();
  String apikey = Keys().apikey;
  String pk = Keys().pk;
  String generateMd5() {
    try {
      String hash = md5.convert(utf8.encode(ts + pk + apikey)).toString();
      return hash;
    } catch (e) {
      return e.toString();
    }
  }

  Future<Captain> fetchComics() async {
    final hash = generateMd5();

    final comicList =
        'https://gateway.marvel.com/v1/public/characters/1010338/comics?apikey=$apikey&ts=$ts&hash=$hash';
    final response = await get(comicList);

    if (response.statusCode == 200) {
      Map comicMap = jsonDecode(response.body);
      var comic = Captain.fromJson(comicMap);
      return comic;
    } else {
      throw Exception('Failed to load comics from API');
    }
  }
}
