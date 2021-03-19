import 'package:flutter/material.dart';
import 'package:widget_dinamico/src/pages/formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Second Form Page'),
        ),
        body: Center(
          child: Text(
              'Hola ${parametros.nombre} ${parametros.apellido} ${parametros.edad}'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
