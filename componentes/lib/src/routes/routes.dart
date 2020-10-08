import 'package:flutter/material.dart';

import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/slider.page.dart';
import 'package:componentes/src/pages/listview_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext contex) => HomePage(),
    'alert': (BuildContext contex) => AlertPage(),
    'avatar': (BuildContext contex) => AvatarPage(),
    'card': (BuildContext contex) => CardPage(),
    'animatedContainer': (BuildContext contex) => AnimatedContainerPage(),
    'inputs': (BuildContext contex) => InputPage(),
    'slider': (BuildContext contex) => SliderPage(),
    'list': (BuildContext contex) => ListaPage(),
  };
}
