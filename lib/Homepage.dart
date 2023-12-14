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
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          ),),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        elevation:1,
        leading: const Icon(Icons.ac_unit_rounded, size: 5, color: Colors.white,),
        ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      ),
    );
  }
}