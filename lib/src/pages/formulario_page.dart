import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //TextEditingController nombreTextController;
  //TextEditingController apellidoTextController;
  FocusNode nombreFocus, apellidoFocus, edadFocus;

  String nombre;
  String edad;
  String apellido;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
          backgroundColor: Colors.cyan.shade800,
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Form(
            key: formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person_outline_rounded),
                    labelText: 'Nombre',
                    hintText: 'Ejemplo: Juan',
                  ),
                  onSaved: (value) {
                    nombre = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Este campo no puede estar vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: nombreFocus,
                  onEditingComplete: () {
                    requestFocus(context, apellidoFocus);
                  },
                  textInputAction: TextInputAction.next,
                  //controller: nombreTextController,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      labelText: 'Apellido',
                      hintText: 'Ejemplo: Peréz'),
                  onSaved: (value) {
                    apellido = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Este campo no puede estar vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,
                  //controller: apellidoTextController,
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person_outline_rounded),
                      labelText: 'Edad',
                      hintText: 'Ejemplo: 25'),
                  onSaved: (value) {
                    edad = value;
                  },
                  // ignore: missing_return
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Este campo no puede estar vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: edadFocus,
                  onEditingComplete: () {
                    envioFormulario();
                  },
                  //controller: apellidoTextController,
                ),
                SizedBox(
                  height: 50.0,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  color: Colors.cyanAccent.shade700,
                  textColor: Colors.white,
                  onPressed: () {
                    envioFormulario();
                  },
                  child: Text('Enviar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void envioFormulario() {
    if (formKey.currentState.validate()) {
      formKey.currentState.save();

      if (nombre.compareTo('Carlos') == 0 && apellido.compareTo('Soto') == 0) {
        Navigator.pushNamed(context, 'formulario_dos',
            arguments: Argumentos(
                nombre: this.nombre, apellido: this.apellido, edad: this.edad));
      }
    }
  }

  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  @override
  void initState() {
    super.initState();
    nombreFocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
  }
}

class Argumentos {
  String nombre, apellido, edad;

  Argumentos({this.nombre, this.apellido, this.edad});
}
