class MyDuration {
  // Q1: Attribute and Constructors 
  final int _milliseconds;

  
  MyDuration(this._milliseconds);

// Noted: Duration shall always be greater or equal to 0 
// Constructor: 
// 1 hour = 3,600,000ms
  MyDuration.fromHours(int hours): _milliseconds = hours * 3600000{
    if(_milliseconds<0){
      throw Exception('The milliseconds must be greater or equal 0');
    }
  }

  MyDuration.fromMinutes(int minutes):_milliseconds = minutes * 60000{
    if(_milliseconds<0){
      throw Exception('The milliseconds must be greater or equal 0');
    }

  }
  MyDuration.fromSeconds(int seconds):_milliseconds = seconds * 1000{
    if(_milliseconds<0){
      throw Exception('The milliseconds must be greater or equal 0');
    }
  }
  MyDuration.fromMilliseconds(int milliseconds):_milliseconds = milliseconds{
     if(_milliseconds<0){
      throw Exception('The milliseconds must be greater or equal 0');
    }

  }

  // getter duration 
  int get milliseconds =>_milliseconds;


  // Q2: Overloaded Operators 
  // >: Compare two duration 
   bool operator > (MyDuration other){
    return this._milliseconds > other._milliseconds;
   }
   // + : Add two durations 
    MyDuration operator + (MyDuration new_other)
    {
    
        return  MyDuration.fromMilliseconds(this._milliseconds + new_other._milliseconds);
    
      }
     // - : Minus two durations 

     MyDuration operator - (MyDuration other){
      return MyDuration.fromMilliseconds(this._milliseconds - other._milliseconds);
     }

  
  
  
  

//   // Display the duration in a readable format
    @override
    String toString() {
    int seconds = (_milliseconds / 1000).round();
    int minutes = (seconds / 60).floor();
    seconds = seconds % 60;
      int hours = (minutes / 60).floor();
      minutes = minutes % 60;
    return '$hours hours, $minutes minutes, $seconds seconds';
  }
 }

      void main() {
        MyDuration duration1 = MyDuration.fromHours(3); // 3 hours
        MyDuration duration2 = MyDuration.fromMinutes(45); // 45 minutes
        print(duration1 + duration2); // 3 hours, 45 minutes, 0 seconds
        print(duration1>duration2); //true

        try {
          print(duration2 - duration1); // This will throw an exception
        } catch (e) {
          print(e); 
      }
}

