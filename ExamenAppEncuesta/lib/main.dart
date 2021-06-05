import 'package:clase8/preguntas/uno.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Encuesta de Satisfacción al Cliente',
      home: Bienvenida(),
    );
  }
}

class Bienvenida extends StatefulWidget {
  @override
  _BienvenidaState createState() => _BienvenidaState();
}

class _BienvenidaState extends State<Bienvenida> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("ITSSNA - ENCUESTA DE SATISFACCIÓN"),
        ),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
              child: Image.asset(
            'assets/descarga.png',
            height: 100,
          )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: Text(
              "Estimado visitante le solicitamos 1 min de su tiempo para evaluar la atención recibida.",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, right: 20.0, left: 20.0, bottom: 20.0),
            child: Text(
              "El proposito es reconocer o mejorar en pro de un mejor servicio.",
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton.icon(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => UNO(),
              ));
            },
            icon: Icon(Icons.check_circle),
            label: Text("Aceptar"),
            color: Colors.red,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }
}
