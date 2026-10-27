import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class PersonalPage extends StatelessWidget {
  const PersonalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final persona = ModalRoute.of(context)!.settings.arguments as Persona;
    final namePersona = TextEditingController(text: persona.name);

    return Scaffold(
      appBar: AppBar(
        title: Text("Ferrer - Edit Profile"),
        ),
      body: Column(
        children: [
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child:
              TextField(
                controller: namePersona,
                decoration: InputDecoration(
                  labelText: "Name ${persona.name}"
                ),
                
              ),
            ),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context, '/');
            },
            child: Text("Save and return"),
          )
      ],),
    );
  }
}