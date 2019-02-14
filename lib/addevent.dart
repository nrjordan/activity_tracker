import 'package:flutter/material.dart';

import './globals.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => new _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final myController = TextEditingController();
  final personController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Add Event..."),
      ),
      body: new Center(
        child: new Column(
          children: <Widget>[
            new Text("Enter your new activity."),
            new TextField(
              controller: myController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter your event here',
              ),
            ),
            new Text("Were you with anyone?"),
            new TextField(
              controller: personController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Enter names here',
              ),
            ),
            new RaisedButton(
              onPressed: () => _enterItem(myController.text, personController.text),
              child: const Text("Submit"),
            ),
          ]
        )
      )
    );
  }

  _enterItem(String newEvent, String person) {
    var today = DateTime.now();
    var todaytouse = new DateTime.utc(today.year, today.month, today.day, 12);
    todayActivities.add(newEvent);
    if (personList.contains(person) == false){
      personList.add(person);
    }
    eventPersonMap[newEvent] = [person];
    if (dateEventMap[todaytouse] != null){
      dateEventMap[todaytouse].add(newEvent);
    } else {
      dateEventMap[todaytouse] = [newEvent];
    }
    Navigator.pop(context);
  }
}