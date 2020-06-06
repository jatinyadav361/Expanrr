import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Bar'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(60),
            child: Center(child: Text('demo search bar',textScaleFactor: 1.6,)),
          )
        ],
      ),
    );
  }
}
