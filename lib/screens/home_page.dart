import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final persona = Persona();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DevProfile M3"),
        ),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        await Navigator.pushNamed(context, '/edit', arguments: persona);
        setState(() {
        });
      },
      child: Text("Edit"),
      ),
      body: Column(
        children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Name: ${persona.name}")
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Email: ${persona.email}"),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Date of birth: ${persona.dateBirth}")
          ],
        ),
      ],),
    );
  }
}