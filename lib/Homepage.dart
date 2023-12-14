import 'package:flutter/material.dart';
import 'package:list_models/classes/Persons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  List<Persons> personsinfo = [];
  void getPersons(){
    personsinfo = Persons.getPersons();
  }

  @override
  Widget build(BuildContext context){
    getPersons();
    return Scaffold(
      appBar: AppBar(title: const Text(
        "Items", 
        style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          ),),
        centerTitle: true,),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
  
}