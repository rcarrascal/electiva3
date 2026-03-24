import 'package:flutter/material.dart';
import './detail_screen.dart';

class HomeScreen extends StatelessWidget {

  final List<String> usuarios = [
    "Ana",
    "Carlos",
    "María",
    "Luis",
    "Sofía"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Usuarios")),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(usuarios[index]),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    nombre: usuarios[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}