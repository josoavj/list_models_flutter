class Section{
  String sname;

  Section({
    required this.sname,
  });

  List<Section> getSection{
    List<Section> secteur = [];
    secteur.add(Section(sname: "Gaming"));
    secteur.add(Section(sname: "Dev"));
    return secteur;
  }
}

class Liste extends Section{
  String lname;
  int element;
  
  Liste({
    required this.lname,
    required this.element, 
    required super.sname, 
  });

  static List<Liste> getListe(){
    List<Liste> items = [];
    items.add(Liste(lname: "",  element: 22));
    items.add(Liste(lname: "", element: 8));
    items.add(Liste(lname: "",  element: 9));
    items.add(Liste(lname: "", element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "", element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 1));
    items.add(Liste(lname: "",  element: 8));
    items.add(Liste(lname: "",  element: 11));
    items.add(Liste(lname: "",  element: 2));
    items.add(Liste(lname: "",  element: 22));
    items.add(Liste(lname: "",  element: 3));
    items.add(Liste(lname: "",  element: 0));
    items.add(Liste(lname: "",  element: 0));
    return items;
  }
}