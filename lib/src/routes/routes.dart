import 'package:flutter/material.dart';
import 'package:widget_dinamico/src/pages/billetera_page.dart';
import 'package:widget_dinamico/src/pages/formulario_page.dart';
//import 'package:widget_dinamico/src/pages/botones_page.dart';
import 'package:widget_dinamico/src/pages/fotos_page.dart';
//import 'package:widget_dinamico/src/pages/home_page.dart';
import 'package:widget_dinamico/src/pages/lugares_page.dart';
import 'package:widget_dinamico/src/pages/mapa_page.dart';
import 'package:widget_dinamico/src/pages/podcast_page.dart';
import 'package:widget_dinamico/src/pages/secondForm_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => FormPage(),
    'mapa': (BuildContext context) => MapaPage(),
    'billetera': (BuildContext context) => BilleteraPage(),
    'fotos': (BuildContext context) => FotosPage(),
    'podcast': (BuildContext context) => PodcastPage(),
    'lugares': (BuildContext context) => LugaresPage(),
    'formulario_dos': (BuildContext context) => SecondFormPage(),
  };
}
