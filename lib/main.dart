import 'package:flutter/material.dart';
import 'package:animation_list/view/page/animated_align.dart';
import 'package:animation_list/view/page/animated_padding.dart';
import 'package:animation_list/view/page/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', routes: {
      '/': (context) => IndexPage(),
      '/animated_align': (context) => AnimatedAlignPage(),
      '/animated_padding': (context) => AnimatedPaddingPage(),
    });
  }
}
