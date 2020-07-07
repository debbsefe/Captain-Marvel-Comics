import 'package:captain_marvel/models/api.dart';
import 'package:flutter/material.dart';

class ComicDetail extends StatelessWidget {
  final result;
  ComicDetail({this.result});
  @override
  Widget build(BuildContext context) {
    List<Urls> urls = result.urls;
    List<Dates> dates = result.dates;
    List<Prices> prices = result.prices;
    List<Items> items = result.creators.items;
    getUrl() {
      for (var url in urls) {
        return url;
      }
    }

    getDate() {
      for (var date in dates) {
        return date;
      }
    }

    getPrice() {
      for (var price in prices) {
        return price;
      }
    }

    getItem() {
      for (var item in items) {
        return item;
      }
    }

    final url = getUrl();
    final date = getDate();
    final price = getPrice();
    final item = getItem();

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Comic Detail',
        ),
        centerTitle: true,
      ),
      body: result == null
          ? CircularProgressIndicator()
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView(
                children: <Widget>[
                  result.id != null
                      ? Text(
                          'ID: ' + result.id.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.digitalId != null
                      ? Text(
                          'Digital ID: ' + result.digitalId.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.title != null
                      ? Text(
                          'Title: ' + result.title,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.issueNumber != null
                      ? Text(
                          'ISSUE NUMBER:' + result.issueNumber.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.variantDescription != null
                      ? Text(
                          'VARIANT DESCRIPTION: ' + result.variantDescription,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.description != null
                      ? Text(
                          'DESCRIPTION: ' + result.description,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.modified != null
                      ? Text(
                          'MODIFIED: ' + result.modified,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.isbn != null
                      ? Text(
                          'ISBN: ' + result.isbn,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      : SizedBox(),
                  result.diamondCode != null
                      ? Text(
                          'DiamondCode: ' + result.diamondCode,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.ean != null
                      ? Text(
                          'Ean: ' + result.ean,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.issn != null
                      ? Text(
                          'ISSN: ' + result.issn,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.pageCount != null
                      ? Text(
                          'PageCount: ' + result.pageCount.toString(),
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.upc != null
                      ? Text(
                          'UPC: ' + result.upc,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.format != null
                      ? Text(
                          'Format: ' + result.format,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  result.resourceURI != null
                      ? Text(
                          'ResourceURI: ' + result.resourceURI,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  url.url != null
                      ? Text(
                          'Url: ' + url.type,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  url.url != null
                      ? Text(
                          'Url Type: ' + url.url,
                          style: TextStyle(color: Colors.white),
                        )
                      : SizedBox(),
                  date.type != null
                      ? Text('Date type: ' + date.type,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  date.date != null
                      ? Text('Date: ' + date.date,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.series.name != null
                      ? Text('Series Name: ' + result.series.name,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.series.resourceURI != null
                      ? Text('Series URI: ' + result.series.resourceURI,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  price.type != null
                      ? Text('Price type: ' + price.type,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  price.price != null
                      ? Text('Price: ' + price.price.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.creators.available != null
                      ? Text(
                          'Creators Available: ' +
                              result.creators.available.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.creators.collectionURI != null
                      ? Text(
                          'Creators collectionURI: ' +
                              result.creators.collectionURI.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.creators.returned != null
                      ? Text(
                          'Creators returned: ' +
                              result.creators.returned.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  item.resourceURI != null
                      ? Text('Creators Url: ' + item.resourceURI,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  item.name != null
                      ? Text('Creators Name: ' + item.name,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  item.role != null
                      ? Text('Creators Role: ' + item.role,
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.events.collectionURI != null
                      ? Text(
                          'Event collectionURI: ' +
                              result.events.collectionURI.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.events.available != null
                      ? Text(
                          'Event Available: ' +
                              result.events.available.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                  result.events.returned != null
                      ? Text(
                          'Event returned: ' +
                              result.events.returned.toString(),
                          style: TextStyle(color: Colors.white))
                      : SizedBox(),
                ],
              ),
            ),
    );
  }
}
