enum Direction { north, east, south, west }
 
void main() {
  // Initial position {7, 3} and facing north
  int x = 7;
  int y = 3;
  Direction direction = Direction.north;

  // Example instruction sequence
  const instructions = "RAALAL";

  // Process the instructions and get the final position and direction
  // For turn right 
  Direction turnRight(Direction currentDirection){
    switch(currentDirection){
      case Direction.north:
      return Direction.east;
      case Direction.east:
      return Direction.south;
      case Direction.south:
      return Direction.west;
      case Direction.west:
      return Direction.north;
    }
   
  }
   Direction turnLeft( Direction currentDirection){
    switch(currentDirection){
      case Direction.north:
      return Direction.west;
      case Direction.west:
      return Direction.south;
      case Direction.south:
      return Direction.east;
       case Direction.east:
      return Direction.north;
      
    
      
    }
      

  }
  void advance(){
    switch(direction){
      case Direction.north:
      y +=1;
      break;
      case Direction.east:
      x +=1;
      break;
      case Direction.south:
      y -=1;
      break;
      case Direction.west:
      x -= 1;
      break;


    }
    for(var instruction in instructions.split(' ')){
      switch(instruction){
        case 'R':
        direction = turnRight(direction);
        break;
        case 'L':
        direction = turnLeft(direction);
        break;
        case 'A':
         advance();
         break;
      }
    }
  }

 

  // Print the final position and direction
  print("Final position:  ($x,$y) ");
  print("Facing: $direction ");
}
