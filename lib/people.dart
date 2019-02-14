import 'package:flutter/material.dart';

import './globals.dart';

class PeoplePage extends StatefulWidget {
  @override
  _PeoplePageState createState() => new _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("People"),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new ListView.builder(
                shrinkWrap: true,
                itemCount: personList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text('${personList[index]}'),
                  );
                })
          ]
        )
      )
    );
  }
}