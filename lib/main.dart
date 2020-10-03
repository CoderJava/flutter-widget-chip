import 'package:flutter/material.dart';

import 'action_chip_example.dart';
import 'choice_chip_example.dart';
import 'filter_chip_example.dart';
import 'input_chip_example.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Chip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              child: Text('Input Chip'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => InputChipExample()));
              },
            ),
            RaisedButton(
              child: Text('Choice Chip'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ChoiceChipExample()));
              },
            ),
            RaisedButton(
              child: Text('Filter Chip'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FilterChipExample()));
              },
            ),
            RaisedButton(
              child: Text('Action Chip'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ActionChipExample()));
              },
            ),
          ],
        ),
      ),
    );
  }
}