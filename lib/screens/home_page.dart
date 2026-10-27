import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Persona persona = new Persona();

    return Scaffold(
      appBar: AppBar(
        title: Text("DevProfile M3"),
        ),
      body: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: const EdgeInsets.all(10),
            child: Text("Name: ${persona.name}"),
            ),
            Text("Email: ${persona.email}"),
            Text("Date of birth: ${persona.dateBirth}"),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/edit');
            },
            child: Text("Edit Profile"),
          ),
      ],),
    );
  }
}