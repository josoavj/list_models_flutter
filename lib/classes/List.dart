class Liste{
  String lname;
  String section;
  int element;
  Liste({
    required this.lname,
    required this.element, 
    required this.section, 
  });

  static List<Liste> getListe(){
    List<Liste> items = [];
    items.add(Liste(lname: "",  element: 22, section: ''));
    items.add(Liste(lname: "", element: 8, section: ''));
    items.add(Liste(lname: "",  element: 9, section: ''));
    items.add(Liste(lname: "", element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "", element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 1, section: ''));
    items.add(Liste(lname: "",  element: 8, section: ''));
    items.add(Liste(lname: "",  element: 11, section: ''));
    items.add(Liste(lname: "",  element: 2, section: ''));
    items.add(Liste(lname: "",  element: 22, section: ''));
    items.add(Liste(lname: "",  element: 3, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    items.add(Liste(lname: "",  element: 0, section: ''));
    return items;
  }
}