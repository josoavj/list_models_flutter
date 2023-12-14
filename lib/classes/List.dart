class Liste{
  String lname;
  int element;
  Liste({
    required this.lname,
    required this.element, 
  });

  static List<Liste> getListe(){
    List<Liste> items = [];
    items.add(Liste(lname: "Videogames",  element: 22, ));
    items.add(Liste(lname: "Books", element: 123, ));
    items.add(Liste(lname: "Anime",  element: 9,));
    items.add(Liste(lname: "Movies", element: 0,));
    items.add(Liste(lname: "PlayStation",  element: 0,));
    items.add(Liste(lname: "Smartphones",  element: 0,));
    items.add(Liste(lname: "Watch", element: 0,));
    items.add(Liste(lname: "Licence",  element: 0,));
    items.add(Liste(lname: "Software",  element: 0,));
    items.add(Liste(lname: "Katana",  element: 0, ));
    items.add(Liste(lname: "Outfits",  element: 0,));
    return items;
  }
}