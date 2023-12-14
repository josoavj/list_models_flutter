class Persons{
  String name;
  String fname;
  String status;
  int age;

  Persons({
    required this.name,
    required this.fname,
    required this.status,
    required this.age
  });

  static List<Persons> getPersons(){
    List<Persons> personsinfo = [];
    personsinfo.add(Persons(name: "Yegar", fname: "Joshua", status: "Single", age: 20));
    personsinfo.add(Persons(name: "Ackerman", fname: "Livaï", status: "Single", age: 24));
    personsinfo.add(Persons(name: "Ackermann", fname: "Mikasa", status: "Single", age: 21));
    personsinfo.add(Persons(name: "Yager", fname: "Zeke", status: "Single", age: 17));
    return personsinfo;
  } 
}