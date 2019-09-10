import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: <Widget>[_renderHead(context), _renderBody()],
        ),
      ),
    );
  }

  Widget _renderHead(context) {
    final _screenSize = MediaQuery.of(context).size;
    return FadeInImage.assetNetwork(
      placeholder: 'assets/img/no-image.jpeg',
      image: 'https://picsum.photos/550?image=9',
      fit: BoxFit.cover,
      height: _screenSize.height * .40,
      width: _screenSize.width,
    );
  }

  Widget _renderBody() {
    return Row(
      children: <Widget>[_firstRow()],
    );
  }

  Widget _firstRow() {
    return Row(
      children: <Widget>[
        Icon(Icons.accessibility),
        Text('Test'),
        Icon(Icons.accessibility_new)
      ],
    );
  }
}
