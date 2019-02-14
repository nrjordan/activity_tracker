import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  @override
  _HelpPageState createState() => new _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Help"),
      ),
      body: new Text("This application was written to help people who don't"
          " feel that they go out enough verify that they're sufficiently "
          "active. By logging each time an activity is done, one can be sure"
          " that they're not becoming overly reclusive."),
    );
  }
}