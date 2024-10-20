class Point{
  final int x;
  final int y;

  Point(this.x, this.y);
  Point translate(int dx, int dy){
    return Point(x + dx, y +dy);
  }
  void show(){
    print('Point($x,$y)');

  }

}
 

 void main(){
  Point p1 = Point(1,2);
  p1.show();
  Point p2 = p1.translate(2,1);
  p2.show();
  p1.show();

    
  }