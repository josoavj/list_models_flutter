import 'package:flutter/material.dart';
import 'package:list_models/classes/List.dart';
import 'package:list_models/classes/Persons.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  
  List<Liste> items = [];
  void getListe(){
    items = Liste.getListe();
  }
  List<Persons> personsinfo = [];
  void getPersons(){
    personsinfo = Persons.getPersons();
  }
  
  @override
  Widget build(BuildContext context){
    getPersons();
    getListe();
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
        child: Column(
          children: [ 
            scrollableListItems(),
            const SizedBox( 
              width: 200,
              height: 900,),
            scrollableListPerson()
          ]),
      ),
    );
  }
  // ListPerson
  SizedBox scrollableListPerson() {
    return SizedBox(
      width: 100,
      height: 100,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index){
                return Card(
                  child: ListTile(
                    contentPadding: const  EdgeInsets.symmetric(horizontal: 5,vertical: 5),
                    title: Text(
                      items[index].lname,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue,
                      ),
                    ),),
                );} , 
              itemCount: items.length),
          );
  }
  // List items
  SizedBox scrollableListItems() {
    return SizedBox(
            width: 400,
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  width: 100,
                  height: 60,
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(),
                        Text(
                          personsinfo[index].name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87,
                          ),
                          ),
                        Text(
                          personsinfo[index].fname,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 51, 50, 50),
                          ),
                        ),
                        Text(
                          "Age: ${personsinfo[index].age} years",
                          style: const TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color:  Color.fromARGB(31, 58, 56, 56),
                          ),
                        ),
                      ]),  
                  )
                );
              },
              separatorBuilder: (context, index) => const SizedBox(width: 20),
              itemCount: personsinfo.length),
          );
  }
}