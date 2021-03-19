import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _mensaje = '';
  TextStyle estiloTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipo de Botones: Soto Zepeda Carlos Fernando'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Divider(),
            Container(
              width: 250.0,
              height: 85.0,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid)),
              child: RaisedButton(
                color: Colors.blue.shade400,
                textColor: Colors.white70,
                onPressed: () {
                  _rasen();
                },
                child: Text('RasenButton'),
              ),
            ),
            Divider(),
            Container(
              width: 250.0,
              height: 85.0,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid)),
              child: FlatButton(
                onPressed: () {
                  _flat();
                },
                child: Text('FlatButton'),
              ),
            ),
            Divider(),
            Container(
              width: 250.0,
              height: 85.0,
              decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid)),
              child: IconButton(
                onPressed: () {
                  _icon();
                },
                icon: Icon(Icons.android),
                iconSize: 85.0,
                color: Colors.lightGreen,
              ),
            ),
            Divider(),
            Container(
              width: 250.0,
              height: 50.0,
              /*decoration: BoxDecoration(
                  border:
                      Border.all(color: Colors.blue, style: BorderStyle.solid)),*/
              child: OutlineButton(
                onPressed: () {
                  _out();
                },
                textColor: Colors.lightBlue.shade900,
                color: Colors.blueAccent.shade50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(55.00)),
                borderSide: BorderSide(color: Colors.lightBlue.shade800),
                child: Text('OutLineButton'),
              ),
            ),
            Divider(),
            Container(
              child: Text(_mensaje, style: estiloTexto),
            ),
          ],
        ),
      ),
    );
  }

  void _rasen() {
    setState(() {
      _mensaje = 'Presionaste RasenButton';
    });
  }

  void _flat() {
    setState(() {
      _mensaje = 'Presionaste FlatButton';
    });
  }

  void _icon() {
    setState(() {
      _mensaje = 'Presionaste IconButton';
    });
  }

  void _out() {
    setState(() {
      _mensaje = 'Presionaste OutLineButton';
    });
  }
}
