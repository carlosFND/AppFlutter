/*Scaffold(
          appBar: AppBar(
            title: Text('Carlos Fernando Soto Zepeda'),
          ),
          body: ListView(
            children: _crearItems(),
          ),
        ));
  }

  List<Widget> _crearItems() {
    List<Widget> list = new List<Widget>();
    for (var opt in nombres) {
      var tem = ListTile(
        title: Text(opt),
        subtitle: Text('Esto es un subtitulo'),
        leading: Icon(Icons.mail),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(tem);
      list.add(Divider());
    }
    return list;
  }
}*/

/*
class HomePage extends StatelessWidget {
  int contador = 0;
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
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () => {},
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
                child: Image.asset('assets/images/gatitoCuadro.png'),
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
              Text('$contador', style: estiloTexto),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            contador++;
            print(contador);
          },
          child: Icon(Icons.plus_one),
        ));
  }
}*/
