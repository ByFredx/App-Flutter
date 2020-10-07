import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estiloTexto = new TextStyle(fontSize: 30);
  final conteo = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 10.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Número de clicks',
              style: estiloTexto,
            ),
            Text('$conteo', style: estiloTexto),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .centerFloat, //Sirve para cambiar la ubicacion del boton
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {print('Hola mundo')},
      ),
    );
  }
}
