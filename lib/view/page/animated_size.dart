import 'package:flutter/material.dart';
import 'dart:async';

class AnimatedSizePage extends StatefulWidget {
  @override
  _AnimatedSizePageState createState() => _AnimatedSizePageState();
}

// AnimatedSizeはSingleTickerProviderStateMixinを適用することで、更新を伝える(vsync)
class _AnimatedSizePageState extends State<AnimatedSizePage>
    with SingleTickerProviderStateMixin {
  double _width = 50;
  double _height = 50;

  @override
  void initState() {
    Timer.periodic(
      Duration(seconds: 1),
      _onTimer,
    );
    super.initState();
  }

  void _onTimer(Timer timer) {
    setState(() {
      _width += 10;
      _height += 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedSize")),
      body: Center(
        child: AnimatedSize(
          duration: Duration(seconds: 1),
          vsync: this,
          child: Container(
            color: Colors.blueAccent,
            width: _width,
            height: _height,
          ),
        ),
      ),
    );
  }
}
