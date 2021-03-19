import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  String _mensaje = '';
  TextStyle estiloTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu Principal',
          onPressed: () => {},
        ),
        title: Text('imagenes'),
        centerTitle: true,
        elevation: 5.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'alertas',
            onPressed: () => {_alertas()},
          ),
          IconButton(
            icon: Icon(Icons.mail),
            tooltip: 'Correo',
            onPressed: () => {_mensajes()},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              child: Image.network(
                  'https://logos-marcas.com/wp-content/uploads/2021/02/Ultimate-Fighting-Championship-UFC-Logo-650x366.png'),
            ),
            SizedBox(
              height: 50.0,
            ),

            /*   Container(
              width = 150,
              child: Image.asset('assets/images/gatito.jpg'),
            ),
            SizeBox(
              height: 50.0,
            ),
            Container(
              width = 150,
              child: Image.network('https://logos-marcas.com/wp-content/uploads/2021/02/Ultimate-Fighting-Championship-UFC-Logo-650x366.png'),
            ),*/

            Text(
              'Haz presionado este numero de veces',
              style: estiloTexto,
            ),
            SizedBox(
              height: 20,
            ),
            Text('$_contador', style: estiloTexto),
            SizedBox(
              height: 20,
            ),
            Text(_mensaje, style: estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _mostrarBotones(),
    );
  }

  Widget _mostrarBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: () {
            _incrementarContador();
            print(_contador);
          },
          child: Icon(Icons.plus_one),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: () {
            _decrementarContador();
            print(_contador);
          },
          child: Icon(Icons.remove_circle),
        ),
        SizedBox(
          width: 7,
        ),
        FloatingActionButton(
          onPressed: () {
            _ceroContador();
            print(_contador);
          },
          child: Icon(Icons.exposure_zero_rounded),
        ),
      ],
    );
  }

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  void _decrementarContador() {
    setState(() {
      _contador--;
    });
  }

  void _ceroContador() {
    setState(() {
      _contador = 0;
    });
  }

  void _alertas() {
    setState(() {
      _mensaje = 'Presionaste Alerta';
    });
  }

  void _mensajes() {
    setState(() {
      _mensaje = 'Presionaste Mensajes';
    });
  }
}
