import 'package:flutter/material.dart';

class BilleteraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textoRuta = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Mi Billetera'),
        ),
        body: Center(
          child: Text('Esta es la pagina $textoRuta'),
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
