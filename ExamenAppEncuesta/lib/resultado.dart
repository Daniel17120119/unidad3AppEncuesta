import 'package:flutter/material.dart';

class RESULTADO extends StatefulWidget {
  final int contador;
  const RESULTADO(this.contador, {Key key}) : super(key: key);

  @override
  _RESULTADOState createState() => _RESULTADOState();
}

class _RESULTADOState extends State<RESULTADO> {
  int calificacion = 0;
  @override
  Widget build(BuildContext context) {
    calificacion = widget.contador;
    print(calificacion);
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("ITSSNA RESULTADO ENCUESTA")),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: <Widget>[
            cuerpo(calificacion),
          ],
        ));
  }
}

Widget cuerpo(int calificacion1) {
  return Container(
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Text("GRACIAS POR RESPONDER LA ENCUESTA",
              style: TextStyle(fontSize: 25.0), textAlign: TextAlign.center),
        ),
        Text("El resultado obtenido es:",
            style: TextStyle(fontSize: 25.0), textAlign: TextAlign.center),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: resultado(calificacion1),
        )
      ],
    ),
  );
}

// ignore: missing_return
Widget resultado(int calificacion2) {
  if (calificacion2 <= 5) {
    return Container(child: Image.asset('assets/5.png'));
  }

  if (calificacion2 >= 6 && calificacion2 <= 10) {
    return Container(child: Image.asset('assets/4.png'));
  }

  if (calificacion2 >= 11 && calificacion2 <= 15) {
    return Container(child: Image.asset('assets/3.png'));
  }

  if (calificacion2 >= 16 && calificacion2 <= 20) {
    return Container(child: Image.asset('assets/2.png'));
  }

  if (calificacion2 >= 21 && calificacion2 <= 25) {
    return Container(child: Image.asset('assets/5.png'));
  }
}
