import 'package:flutter/material.dart';
import 'package:flutter_pf2/models/persona.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
    late Persona persona;
    late TextEditingController namePersona;
    late TextEditingController emailPersona;
    late TextEditingController datePersona;
    late TextEditingController surnamePersona;
    late TextEditingController passwordPersona;
  @override
  Widget build(BuildContext context) {

    persona = ModalRoute.of(context)!.settings.arguments as Persona;
    namePersona = TextEditingController(text: persona.name);
    emailPersona = TextEditingController(text: persona.email);
    datePersona = TextEditingController(text: persona.dateBirth);
    surnamePersona = TextEditingController(text: persona.surname);
    passwordPersona = TextEditingController(text: persona.password);

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
                controller: surnamePersona,
                textCapitalization: TextCapitalization.words,
                decoration: InputDecoration(labelText: "Surname"),
              ),
              ),
            ],
          ),
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
                controller: passwordPersona,
                obscureText: true,
                decoration: InputDecoration(labelText: "Password"),
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
                onTap: ()async {
                  final picked = await showDatePicker(
                    context: context,
                    initialDate: DateTime.tryParse(persona.dateBirth) ?? DateTime(2000),
                    firstDate: DateTime(1900), 
                    lastDate: DateTime.now(),
                    );
                    if (picked != null) {
                      datePersona.text = "${picked.day}/${picked.month}/${picked.year}";
                    }
                },
              ),
            ),
          ],
          ),
          ElevatedButton(
            onPressed: () {
              persona.name = namePersona.text;
              persona.surname = surnamePersona.text;
              persona.email = emailPersona.text;
              persona.password = passwordPersona.text;
              persona.dateBirth = datePersona.text;
              Navigator.pop(context);
            },
            child: Text("Save and return"),
          )
      ],),
    );
  }
}