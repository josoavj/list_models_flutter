class Liste{
  String lname;
  String lSection;
  int element;
  
  Liste({
    required this.lname,
    required this.lSection,
    required this.element, 
  });

  static List<Liste> getListe(){
    List<Liste> items = [];
    items.add(Liste(lname: "", lSection: "", element: 22));
    items.add(Liste(lname: "", lSection: "", element: 8));
    items.add(Liste(lname: "", lSection: "", element: 9));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 1));
    items.add(Liste(lname: "", lSection: "", element: 8));
    items.add(Liste(lname: "", lSection: "", element: 11));
    items.add(Liste(lname: "", lSection: "", element: 2));
    items.add(Liste(lname: "", lSection: "", element: 22));
    items.add(Liste(lname: "", lSection: "", element: 3));
    items.add(Liste(lname: "", lSection: "", element: 0));
    items.add(Liste(lname: "", lSection: "", element: 0));
    return items;
  }
}