import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_design/src/pages/basicPage.dart';
import 'package:flutter_design/src/pages/scrollPage.dart';
import 'package:flutter_design/src/pages/ultimatePage.dart';

void main() => runApp(Run());

class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));
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
        },
        'ultimate': (BuildContext context) {
          return UltimatePage();
        }
      },
    );
  }
}
