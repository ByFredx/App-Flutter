import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Divider(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Valor Slider $_valorSlider',
      // divisions: 10,
      value: _valorSlider,
      min: 10.0,
      max: 500.0,
      onChanged: (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://media-exp1.licdn.com/dms/image/C4D03AQGCJ4BsoVGEUw/profile-displayphoto-shrink_400_400/0?e=1607558400&v=beta&t=iRf5RVyrWpePyVEh4cN7qS2zykzqMx9sDN5Z-cgeq0s'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
