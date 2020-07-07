import 'package:captain_marvel/models/api.dart';
import 'package:flutter/material.dart';

class ComicDetail extends StatelessWidget {
  final result;
  ComicDetail({this.result});
  @override
  Widget build(BuildContext context) {
    List<Urls> urls = result.urls;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Comics Detail',
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          result.id != null ? Text('ID ' + result.id.toString()) : SizedBox(),
          result.digitalId != null
              ? Text('Digital ID ' + result.digitalId.toString())
              : SizedBox(),
          result.title != null ? Text('Title ' + result.title) : SizedBox(),
          result.issueNumber != null
              ? Text('ISSUE NUMBER' + result.issueNumber.toString())
              : SizedBox(),
          result.variantDescription != null
              ? Text('VARIANT DESCRIPTION ' + result.variantDescription)
              : SizedBox(),
          result.description != null
              ? Text('DESCRIPTION ' + result.description)
              : SizedBox(),
          Text('MODIFIED ' + result.modified),
          Text('ISBN ' + result.isbn),
          Text('diamondCode ' + result.diamondCode),
          Text('ean ' + result.ean),
          Text('issn ' + result.issn),
          Text('pageCount ' + result.pageCount.toString()),
          Text('UPC ' + result.upc),
          Text('Format ' + result.format),
          Text('resourceURI ' + result.resourceURI),
          Text('Urls ' + urls[0].url),
          urls[1].url != null
              ? Text('Url Type ' + urls[1].url ?? 0)
              : SizedBox()
          // result.textObjects != ''
          //     ? Text('TextObjects ' + result.textObjects[])
          //     : SizedBox()
        ],
      ),
    );
  }
}
