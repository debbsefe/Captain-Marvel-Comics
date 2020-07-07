import 'package:captain_marvel/models/api.dart';
import 'package:captain_marvel/screens/comics/comic-detail.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ComicList extends StatelessWidget {
  final List<Results> results;
  ComicList({this.results});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Comic List',
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.black,
                      title: Text(
                        'Sort comics by edition release date',
                        style: TextStyle(
                          // fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      content: SingleChildScrollView(
                        child: Container(
                          height: 50,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () => results.sort((a, b) {
                                  getDate(results) {
                                    for (var result in results) return result;
                                  }

                                  final adate = getDate(results);
                                  final bdate = getDate(results);
                                  var a = DateTime.parse(adate.dates[1]);
                                  var b = DateTime.parse(bdate.dates[1]);
                                  print(adate);
                                  print(bdate);
                                  return a.compareTo(b);
                                }),
                                child: Text(
                                  'Ascending',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              GestureDetector(
                                onTap: () => results.sort((a, b) {
                                  getDate(results) {
                                    for (var result in results) return result;
                                  }

                                  final adate = getDate(results);
                                  final bdate = getDate(results);
                                  var a = DateTime.parse(adate.dates[1]);
                                  var b = DateTime.parse(bdate.dates[1]);
                                  print(adate);
                                  print(bdate);
                                  return b.compareTo(a);
                                }),
                                child: Text(
                                  'Descending',
                                  style: TextStyle(
                                    // fontWeight: FontWeight.w700,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(
                                color: Colors.red, fontWeight: FontWeight.w700),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    );
                  });
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: results.length,
          itemBuilder: (context, index) {
            Thumbnail thumbnail = results[index].thumbnail;
            List<Dates> dates = results[index].dates;
            final result = results[index];
            getDate() {
              var date = dates[1];
              return date;
            }

            Dates date = getDate();
            DateTime parseDate = DateTime.parse(date.date);
            String dateFormat = DateFormat('d MMMM yyyy').format(parseDate);
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => ComicDetail(result: result))),
                child: Card(
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image(
                        image: NetworkImage(
                            thumbnail.path + '.' + thumbnail.extension),
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Text(
                              result.title,
                              overflow: TextOverflow.fade,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Release Date: ' + dateFormat,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
