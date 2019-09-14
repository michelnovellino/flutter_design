import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:math';

class ScrollPage extends StatelessWidget {
  final _normalFont = TextStyle(fontSize: 30, color: Colors.white);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[_page1(), _page2(context)],
    ));
  }

  Widget _background = Container(
    width: double.infinity,
    height: double.infinity,
    color: Color.fromRGBO(108, 192, 218, 1.0),
  );
  Widget _backgroundImage = Container(
    width: double.infinity,
    height: double.infinity,
    child: Image(
      image: AssetImage('assets/img/scroll-1.png'),
      fit: BoxFit.cover,
    ),
  );

  Widget info() {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0),
          Text('11º', style: _normalFont),
          Text(DateFormat.yMMMd().format(new DateTime.now()).toString(),
              style: _normalFont),
          Expanded(child: Container()),
          Icon(
            Icons.keyboard_arrow_down,
            size: 70,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  Widget _page1() {
    return Stack(children: <Widget>[_background, _backgroundImage, info()]);
  }

  Widget _page2(context) {
    return Stack(
      children: <Widget>[
        _background,
        Center(
          
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: RaisedButton(
                elevation: 5,
                hoverElevation: sqrt1_2,
                color: Colors.blueAccent,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Welcome',
                      style: TextStyle(color: Colors.white),
                    )),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: RaisedButton(
                elevation: 5,
                hoverElevation: sqrt1_2,
                color: Colors.blueAccent,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    child: Text(
                      'Ultimate',
                      style: TextStyle(color: Colors.white),
                    )),
                onPressed: () {
                  Navigator.pushNamed(context, 'ultimate');
                },
              ),
            )
          ],
        ))
      ],
    );
  }
}
