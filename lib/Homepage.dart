import 'package:flutter/cupertino.dart';
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
        leading: GestureDetector(
          onTap: (){
          },
          child: const Icon(CupertinoIcons.cube_box, size: 20, color: Colors.white,),
        ),
        ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        children: [
          const Text(
            "Persons",
            style: TextStyle(
              color: Color.fromARGB(176, 0, 0, 0),
              fontSize: 20,
            ),
          ),
          scrollableListItems(),
            const SizedBox(
              height: 50,),
          const Text(
            "Sections",
            style: TextStyle(
              color: Color.fromARGB(162, 0, 0, 0),
              fontSize: 20,
            ),
          ),
          scrollableListPerson()
        ]
      ),
    );
  }
  // ListPerson
  SizedBox scrollableListPerson() {
    return SizedBox(
      width: 100,
      height: 600,
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
                            color:  Color.fromARGB(166, 58, 56, 56),
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