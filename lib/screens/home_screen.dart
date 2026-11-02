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
      child: Text("Edit Profile"),
      ),
      body: Center(
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(16),
          child: Column(
            children:[
              Text("Name: ${persona.name} ${persona.surname}", 
              textScaler: TextScaler.linear(2),
              ),
              Text("Email: ${persona.email}", 
              textScaler: TextScaler.linear(2),
              ),
              Text("Date of birth: ${persona.dateBirth}", 
              textScaler: TextScaler.linear(2),
              ),
              OutlinedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/widgets');
                },
                icon: Icon(Icons.widgets),
                label: Text("Explore Widget Showcase"),
              ),
            ], 
          ),
        ),
      ),
    );
  }
}