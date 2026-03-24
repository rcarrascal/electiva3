import 'package:flutter/material.dart';

class LoginScreenStateless extends StatelessWidget {

  const LoginScreenStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login App"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            SizedBox(height: 40),

            Text(
              "Bienvenido",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            SizedBox(height: 40),

            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20),

            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                print("Login presionado");
              },
              child: Text("Iniciar Sesión"),
            ),

            SizedBox(height: 20),

            Text(
              "Intentos de login: 0",
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}