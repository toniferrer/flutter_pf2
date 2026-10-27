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
    final datePersona = TextEditingController(text: persona.dateBirth);

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
                textCapitalization: TextCapitalization.words,
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
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Email"
                ),
              ),
            ),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Expanded(child:
              TextField(
                controller: datePersona,
                readOnly: true,
                decoration: InputDecoration(
                  labelText: "Date of birth"
                ),
              ),
            ),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              persona.name = namePersona.text;
              Navigator.pop(context, '/');
            },
            child: Text("Save and return"),
          )
      ],),
    );
  }
}