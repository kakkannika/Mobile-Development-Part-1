// My own house have window, root, door and chimney


class Location{
  String country;
  String street;
  
  Location(this.country, this.street);

  @override
  String toString(){
    return 'My house live in $country in $street street';
  }
  
  
}

class Window{
  String color;
  String position;

  Window(this.color, this.position);
  @override
  String toString(){
    return 'The color of window in my house:$color, that have position:$position';
  }
  
  
   
}
// create class room
class Room{
  String bed;
  String lamb;
  String size;
  String table;

  // constructor 
  Room(this.bed,this.lamb,this.size,this.table);
  @override
  String toString(){
    return 'In my room have $bed room  $lamb lamb,have $size size and have  $table table';
  }
 
}

 
// Create class root 
class Root{
  String shape;
  // constructor 
  Root(this.shape);
  @override
  String toString(){
    return 'The root of my  house have shape:$shape';
  }

}
class Door{
  String color;
  String position;
  String shape;

  Door(this.color,this.position, this.shape);
  @override
  String toString(){
    return 'The door color of my house is :$color that has position at $position espacally is $shape shape';
  }
}

class Chimney{
  String position;
  Chimney(this.position);
  @override
  String toString(){
    return 'The position of chimney is $position';
  }
}
// Now I will create class House 
class House{
  Location location;
  List<Window> window;
   Root root;
   Door  door;
   Chimney chimney;
   Room room;

  House(this.window,this.root,this.door,this.chimney,this.room,this.location);

  void Display(){
    print("Now Let's get to know my Houese:");
    print("Location: $location");
     print('There are 4 windows in my house:');
    for(var window in window){
      print(window);
    }
    
    print("Door:$door");
    print("Root:$root");
    print("Chimney:$chimney");
    print("Room: $room");
    
   


  }
}
// Now create different kind of houeses
void main(){
  print("=======My house========");
  var location = Location('CAMBODIA', '271');

  // For window 
  var window1 = Window('red', 'left_side(stair1)');
  var window2 = Window('green', 'right_side(stair1)');
  var window3 = Window('red', 'left_side(grown)');
  var window4 = Window("red", 'right_side(grown)');

  // For root 
  var root = Root('triangular');

  // For door 
  var door = Door('black', 'center(grown)', 'rectangle');
  // For Chimney
  var chimney = Chimney('The right hand side of root');
  // room 
  var room = Room('1', '1', '30x20', '1');

  // Combine it into House1 
  var house1= House([window1,window2,window3,window4], root, door, chimney,room,location);
  house1.Display();



  print("==========End===========");
}





  
// }
