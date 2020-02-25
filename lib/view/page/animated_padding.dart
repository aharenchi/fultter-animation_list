import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedPaddingPage extends StatefulWidget {
  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double _padding = 100;

  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 1),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    setState(() => _padding = 0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPadding'),
      ),
      body: Center(
        child: Container(
          color: Colors.blueAccent,
          child: AnimatedPadding(
            padding: EdgeInsets.all(_padding),
            duration: Duration(seconds: 2),
            curve: Curves.linear,
          ),
        ),
      ),
    );
  }
}
