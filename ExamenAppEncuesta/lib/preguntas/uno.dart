import 'package:clase8/preguntas/dos.dart';
import 'package:flutter/material.dart';

class UNO extends StatefulWidget {
  @override
  _UNOState createState() => _UNOState();
}

class _UNOState extends State<UNO> {
  int calificacion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("ITSSNA - PREGUNTA 1 DE 5")),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "¿La persona que le atendio, lo saludo?",
                style: TextStyle(fontSize: 30.0),
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 5;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DOS(calificacion)));
                  },
                  child: Image.asset('assets/1.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 4;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DOS(calificacion)));
                  },
                  child: Image.asset('assets/2.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 3;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DOS(calificacion)));
                  },
                  child: Image.asset('assets/3.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 2;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DOS(calificacion)));
                  },
                  child: Image.asset('assets/4.png')),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: GestureDetector(
                  onTap: () {
                    calificacion = calificacion + 1;
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => DOS(calificacion)));
                  },
                  child: Image.asset('assets/5.png')),
            ),
          ],
        ),
      ),
    );
  }
}
