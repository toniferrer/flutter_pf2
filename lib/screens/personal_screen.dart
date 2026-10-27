import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    final persona = ModalRoute.of(context)!.settings.arguments as Persona;
    final namePersona = TextEditingController(text: persona.name);
    final emailPersona = TextEditingController(text: persona.email);

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
                  labelText: "Name"
                ),
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(child:
              TextField(
                controller: emailPersona,
                decoration: InputDecoration(
                  labelText: "Email"
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