import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10.0),
          children: <Widget>[
            _cardTipo1(),
            SizedBox(height: 30.0),
            _cardTipo2()
          ],
        ));
  }
}

Widget _cardTipo1() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Soy el titulo de esta tarjeta'),
          subtitle: Text(
              'Aqui estamos con la descripcion de la tarjeta que quiero que ustedes vean para nosenosenosenose sjsjsajsajsj'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text('Cancelar'),
              onPressed: () {},
            ),
            TextButton(
              child: Text('Ok'),
              onPressed: () {},
            ),
          ],
        )
      ],
    ),
  );
}

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: <Widget>[
        FadeInImage(
          image: NetworkImage(
              'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),

        /* Image(
          image: NetworkImage(
              'https://fotoarte.com.uy/wp-content/uploads/2019/03/Landscape-fotoarte.jpg'),
        )*/

        Container(
            padding: EdgeInsets.all(10.0),
            child: Text('No tengo idea de que poner'))
      ],
    ),
  );
}
