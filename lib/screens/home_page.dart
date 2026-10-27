import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Navigator.pushNamed(context, '/edit', arguments: persona);
            },
            child: Text("Edit Profile"),
          ),
      ],),
    );
  }
}