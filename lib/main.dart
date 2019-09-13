import 'package:flutter/material.dart';
import 'package:flutter_design/src/pages/basicPage.dart';
import 'package:flutter_design/src/pages/scrollPage.dart';

void main() => runApp(Run());

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'basic',
      routes: {
        'basic': (BuildContext context) {
          return BasicPage();
        },
        'scroll': (BuildContext context) {
          return ScrollPage();
        }
      },
    );
  }
}
