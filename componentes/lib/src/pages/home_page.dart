import 'package:flutter/material.dart';

import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/providers/menu_provider.dart';

class HomePage extends StatelessWidget {
  final Color _colorList = Color.fromRGBO(111, 30, 81, 1.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // menuProvider.cargarData();

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (contex, AsyncSnapshot<List<dynamic>> snapchot) {
        // print('builder');
        // print(snapchot.data);
        return ListView(
          children: _listaItems(snapchot.data, contex),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    // if (data == null) {  return [];} Soluición práctico para evitar error Foreach de data

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        // leading: Icon(Icons.ac_unit, color: Colors.red),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.green),
        onTap: () {
          // final route = MaterialPageRoute(builder: (context) => AlertPage());
          // Navigator.push(context, route);
          Navigator.pushNamed(context, opt['ruta']);
        },
      );

      opciones..add(widgetTemp)..add(Divider(height: 12.4, color: Colors.red));
    });

    return opciones;
  }
}
