import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<IndexPage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              title: Text('AnimatedAlign'),
              onTap: () {
                Navigator.of(context).pushNamed('/animated_align');
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('AnimatedPadding'),
              onTap: () {
                Navigator.of(context).pushNamed('/animated_padding');
              },
            ),
          )
        ],
      ),
    );
  }
}
