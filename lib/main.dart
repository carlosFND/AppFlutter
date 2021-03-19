import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:widget_dinamico/src/routes/routes.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de imagenes',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),
      //home: HomePage(),
    );
  }
}
