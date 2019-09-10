import 'package:flutter/material.dart';
import 'package:flutter_design/src/pages/basicPage.dart';
 
void main() => runApp(Run());
 
class Run extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: BasicPage()
    );
  }

}
