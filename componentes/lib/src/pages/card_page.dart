import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 40.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 20.5, // ESTO SIRVE PARA LA SOMBRA DE LA TARJETA
      color: Colors.red[100], // COLOR DE LA TARJETA
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0)), // Borde dela tarjeta
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.red),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text('Este es un subtitulo de la tarjeta principal'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('ok'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://upload.wikimedia.org/wikipedia/commons/3/35/Neckertal_20150527-6384.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Este es una Imagen de GOOGLE - Landscape'))
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.purple[300],
                blurRadius: 15.0,
                spreadRadius: 1.0,
                offset: Offset(10.0, 10.0))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: card,
      ),
    );
  }
}
