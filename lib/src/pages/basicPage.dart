import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final _title = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final _subtitle = TextStyle(fontSize: 20.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _renderHead(context),
              _renderTitle(),
              _renderButtons(context),
              _renderBody()
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderHead(context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
        child: FadeInImage.assetNetwork(
      placeholder: 'assets/img/no-image.jpeg',
      image: 'https://picsum.photos/550?image=9',
      fit: BoxFit.cover,
      height: _screenSize.height * .70,
      width: _screenSize.width,
    ));
  }

  Widget _renderTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Row(children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Titulo de ejemplo',
                style: _title,
              ),
              Text(
                'Subtitulo de ejemplo',
                style: _subtitle,
              ),
            ],
          ),
        ),
        Icon(
          Icons.star_half,
          color: Colors.redAccent,
        ),
        Text(
          '33',
          style: _subtitle,
        )
      ]),
    );
  }
}

Widget _renderButtons(context) {
  return Container(
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: <Widget>[
      _actionButton(Icons.call, 'CALL', (){
        
      }),
      _actionButton(Icons.near_me, 'ROUTE', (){
        Navigator.pushNamed(context, 'scroll');
      }),
      _actionButton(Icons.share, 'Share',(){
        
      }),
    ],
  ));
}

Widget _actionButton(IconData icon, String texto,Function  cb) {
  return Column(
    children: <Widget>[
      IconButton(icon: Icon(icon), onPressed: cb,),
      SizedBox(height: 5.0),
      Text( 
        texto,
        style: TextStyle(fontSize: 15.0, color: Colors.blue),
      )
    ],
  );
}

Widget _renderBody() {
  return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id lacus a tortor posuere convallis quis non risus. Aenean sed egestas eros, at mollis augue. Pellentesque in sollicitudin justo. Duis ipsum magna, rutrum vitae mattis et, tincidunt et risus. Praesent ligula sem, vehicula fermentum lobortis in, efficitur vel ligula. Suspendisse ultricies leo nec mi maximus convallis. Maecenas convallis interdum dictum.',
      ));
}
