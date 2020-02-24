import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedAlignPage extends StatefulWidget {
  @override
  _AnimatedAlignPageState createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment.bottomLeft,
  ];

  var _index = 0;

  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];

  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 1),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    setState(() => _index++);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedAlign'),
      ),
      body: AnimatedAlign(
        alignment: _alignment,
        duration: Duration(seconds: 1),
        child: Container(
          width: 100,
          height: 100,
          color: Colors.blueAccent,
        ),
      ),
    );
  }

  void moveWidget() {}
}
