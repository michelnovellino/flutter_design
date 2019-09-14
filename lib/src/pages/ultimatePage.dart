import 'dart:math';
import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';

class UltimatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _background(),
          _shape(context),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[_header(), _body(context)],
            ),
          )
        ],
      ),
      bottomNavigationBar: _tabPanel(context),
    );
  }

  Widget _tabPanel(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
          canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
          primaryColor: Colors.pinkAccent,
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0)))),
      child: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.bubble_chart), title: Container()),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle), title: Container())
        ],
      ),
    );
  }

  Widget _background() {
    final gradient = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.6, 1),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );
    return gradient;
  }

  Widget _shape(context) {
    final screenSize = MediaQuery.of(context).size;
    final shape = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: screenSize.height * .40,
        width: screenSize.width * .80,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]),
            borderRadius: BorderRadius.circular(50.0),
            color: Colors.pink),
      ),
    );
    return Positioned(top: -70, child: shape);
  }

  Widget _header() {
    final _textStyle1 = TextStyle(
        color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold);
    final _textStyle2 = TextStyle(
      color: Colors.white,
      fontSize: 16.0,
    );
    final header = SafeArea(
        child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Classify Transaction',
                  style: _textStyle1,
                ),
                SizedBox(height: 5.0),
                Text(
                  'CLassify Transaction into a particular category',
                  style: _textStyle2,
                )
              ],
            )));
    return header;
  }

  Widget _body(context) {
    return ClipRect(
      child: BackdropFilter(
        filter: prefix0.ImageFilter.blur(sigmaX: 20.0, sigmaY: 5.0),
        child: Table(children: [
          TableRow(children: [
            _createItem(Icons.border_all, Colors.pinkAccent, 'item 1'),
            _createItem(Icons.ac_unit, Colors.blue, 'item 2')
          ]),
          TableRow(children: [
            _createItem(Icons.accessibility_new, Colors.greenAccent, 'item 3'),
            _createItem(Icons.account_balance, Colors.amberAccent, 'item 4')
          ])
        ]),
      ),
    );
  }
}

Widget _createItem(IconData customIcon, Color color, String text) {
  return Container(
    height: 140.0,
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        SizedBox(height: 5.0),
        CircleAvatar(
          backgroundColor: color,
          radius: 35.0,
          child: Icon(customIcon, color: Colors.white, size: 30.0),
        ),
        Text(text, style: TextStyle(color: color)),
        SizedBox(height: 5.0)
      ],
    ),
  );
}
