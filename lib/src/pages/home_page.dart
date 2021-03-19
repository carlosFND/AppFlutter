import 'package:flutter/material.dart';
import 'package:widget_dinamico/src/pages/mapa_page.dart';
import 'package:widget_dinamico/src/providers/menu_provider.dart';
import 'package:widget_dinamico/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba de ListView'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  return FutureBuilder(
    future: menuProvider.cargarDatos(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
      return ListView(
        children: _listaItems(snapshot.data, context),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((opt) {
    final wTem = ListTile(
      leading: ontenerIcono(opt['icono']),
      title: Text(opt['texto']),
      trailing: Icon(Icons.keyboard_arrow_right, size: 35),
      onTap: () {
        Navigator.pushNamed(context, opt['ruta'], arguments: opt['ruta']);
        /*
        final route = MaterialPageRoute(builder: (context) {
          return MapaPage();
        });
        Navigator.push(context, route);
        */
      },
    );
    opciones.add(wTem);
    opciones.add(Divider());
  });
  return opciones;
}

/* return [
    ListTile(
      title: Text("Lugares favoritos", style: TextStyle(fontSize: 20)),
      leading: Icon(Icons.map, size: 35),
      trailing: Icon(Icons.keyboard_arrow_right, size: 35),
      onTap: () {},
    ),
    Divider(),
    ListTile(
        title: Text("Billetera", style: TextStyle(fontSize: 20)),
        leading: Icon(Icons.account_balance_wallet, size: 35),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {}),
    Divider(),
    ListTile(
        title: Text("Galeria de Fotos", style: TextStyle(fontSize: 20)),
        leading: Icon(Icons.photo_album, size: 35),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {}),
    Divider(),
    ListTile(
        title: Text("PodCast", style: TextStyle(fontSize: 20)),
        leading: Icon(Icons.audiotrack, size: 35),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {}),
    Divider(),
    ListTile(
        title: Text("Lugares por visitar", style: TextStyle(fontSize: 20)),
        leading: Icon(Icons.add_location, size: 35),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {}),
    Divider(),
  ];*/
