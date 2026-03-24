import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String nombre;

  DetailScreen({required this.nombre});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detalle")),
      body: Center(
        child: Column(
          children: [
            Text("Hola $nombre", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Volver"),
            ),
          ],
        ),
      ),
    );
  }
}
