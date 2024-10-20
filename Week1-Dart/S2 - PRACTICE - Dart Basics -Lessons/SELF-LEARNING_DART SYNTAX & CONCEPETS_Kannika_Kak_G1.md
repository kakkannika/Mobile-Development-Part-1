# SELF-LEARNING 1 - Dart Syntax & Concepts
## Provide code examples that illustrate the concepts.
## 1. Type Inference

### EXPLAIN : Explain how Dart infers the type of a variable.
Type Inference is a cool feature that can autometically determines the type of variable using ' Var '  that can infet the data type  from its initial value.

### CODE : Complete the bellow code to illustrate the concepts:
###### dart // Declare a int variable and let Dart infer its type // Define a variable with an explicit String type

```dart
// Dart Examples of 
void main(){
    var name = "Kannika";

}
```

- Dart infers the type of name as a String  and "Kannika" is the value that assign to name as a string.
- How to check type of name we can write code below:

```Dart
void main() {
     var name = "Kannika";
     print(name.runtimeType)

}

void main(){
    int age = 10;

}
```

- Dart infers the type of age is interger because 10 is a number that the value has assiged to age.
- How to check age 

```Dart
void main(){
    int age = 10;
    print(age.runtimeType).

}
```
## 2. Nullable and Non-Nullable Variables
### EXPLAIN : Explain nullable vs non-nullable variables.
  * nuallable : it's mean variable can hold a 'null' and to put the nullable we use tag '?' after the type like int? age;
  * non-nullable: it's  mean they cannot hold a null because it must hold  value that assigned.
  
  
   ```Dart 
   // Declare a nullable integer variable and assign it a null value
   void main(){
  int? score = null;
  print(score);
}
```
- if we want to null we just put "?" after inter so the score will be null.

- Declare a non-nullable integer variable and assign it a value

```Dart
    void main(){
    
    int score1 = 100;
    print(score1);
}
```
-  if we just put "int score = 100" the null will not set and it also have the value of score;

-  Assign a new value to the nullable variable

```Dart
void main()
  {
  int score1 = 100;
  print(score1);
  score1 = 150;
  print(score1);
  }
  ```

- score is assigned a new value 150, it mean nullable can change null to have a value
 
 
 ## 3. Final and const
 ### EXPLAIN : Describe the difference between final and const.
 - final and const are use to declear variable that cannot be change.
 - final: can only be set once and it's initialize when accessed.
-  Example: final name = "kannika"; and you want to chnage name to 'Thida' It's can't be change.
 - const: variable is implicitly final but it is a compile-time constant.
 - const is different from final is it initialize during compilation.


 ### CODE : Complete the bellow code to illustrate the concepts:

 ```Dart

 void main(){
          final DateTime currentTime = DateTime.now();
          print(DateTime.now());
      

       

    // Declare a const variable with a integer value
    
        const number = 20;
        print(number);


      
  } 

  ```
   ### Can you declare this variable as const? Why?
  - For the code above we cannot declare varisable as const because const must be know at compile time and for the current time is determie time at runtime.
  ### Can you reassign the value of this final variable? Why? 
  - for the code above we cannot reassign the value of this final variable because const is compile time it mean it's initialized during compilation and the value that had been assign must be know and cannot change.
  ---
        

  
  

## 4. Strings, Lists and Maps
### CODE : Complete the bellow code to illustrate the concepts:
#### Strings:

```Dart
// Declare two strings: firstName and lastName and an integer:age
    void main(){
      String firstName = "Kannika";
      String lastName = " Kak";
      int age = 19;
      // Concatenate the 2 strings and the age 
      String fullName ='$firstName $lastName is $age years old.';
      // // Print result
      print(fullName);
    }
 ```
 #### List :

 ```Dart
        void main(){
        // Create a list of integers
        List<int> numbers = [1,2,3,4,5];
        print(numbers);
        // Add a number to the list
        numbers.add(6);
        print(numbers);
        // Remove a number from the list
        numbers.remove(3);
        print(numbers);
        // Insert a number at a specific index in the list
        numbers.insert(1, 20);
        print(numbers);
        // Iterate over the list and print each number
        for(int number in numbers){
          print(number);
        }
        

        }
```
### Maps

```Dart
void main(){
  // Create a map with String keys and integer values
  Map<String,int> fruits={
    "Apple":10,
    "Mango":20,
    "Orange":30
};
print(fruits);

// Add a new key-value pair to the map
fruits["Watermelon"] = 5;
print(fruits);
// Remove a key-value pair from the map
fruits.remove("Apple");
print(fruits);
// Iterate over the map and print each key-value pair
fruits.forEach((key, value){
  print("In my shop $key have $value ");

});
 
}
```

## 5. Loops and Conditions
### CODE : Complete the bellow code to illustrate the concepts:


```Dart
void main(){
  //Use a for-loop to print numbers from 1 to 5
  for(int i =1;i<=5;i++){
    print(i);
  }
  // Use a while-loop to print numbers while a condition is true
  int number = 3;
  while(number<=5){
    print(number);
  number++;
  }
  // Use an if-else statement to check if a number is even or odd
  int numbers = 10;
  if(numbers%2==0){
    print('$numbers is an even number');

  }else{
    print('$numbers is an odd number');
  }

  
}
```

## 6. Functions
### EXPLAIN : Compare positional and named function arguments
- positional : you must supply the arguments in the same order as you defined on parameters when you wrote function.if you call the function in wrong order it mean when you output the results will be wrong as well.
- name function arguments: it defines within culy braces in a function's parameter and also defined as 'requried'  if don't ues requried or culy braces it'll null.
#### Positional Parameters Vs Named Parameters 
  1. 
   - positional: order is really important you must be pass arguments in the same order as they are defined in the function. 
  - named parameters: you can pass arguments in any order, as long as you specify the parameter name.
  
  2.
  - positional parameters are requried by default.
  - named parameters are optional. 
  
  

### EXPLAIN : Explain when and how to use arrow syntax for functions
- The arrow function is represented by => symbol. It is a shorthand syntax for any function that has only one expression.

### CODE : Complete the bellow code to illustrate the concepts:
#### Defining and Invoking a Function:


```Dart

void main(){
  // Define a function that takes two integers and returns their sum
  int sum(int a , int b){
    return  a+b;
  }

// Call the function and print the result
int result = sum(10,20);
print(result);
}

```
## Positional vs Named Arguments:

```Dart

// Define a function that uses positional arguments
void  info(String firstName, String lastName,String major){
  print('$firstName $lastName are new students and studeid $major');
   

}

// Define another function that uses named arguments with the required keyword (ex: getArea with rectangle arguments)
int  getArea({required int width, required int height}){
  return width * height;
}

// Call both functions with appropriate arguments
void main(){
  // call positional
  info("Kannika","Kak", "Computer Science");
  info("Somawatey","Khov", "Telecom and Networking");
  info("Visal","Korn", "Computer Science");
  info("Sovannrath","Kim", "Data Science");

 // call named functions 
  int area = getArea(width: 5,height: 2);
  print("Area = $area");
}
// }

```

### EXPLAIN : Can positional arguement be ommited? Show an example
- The positional argument cannot ommited, but there are mark as optional square brackets.
- 
  ```Dart
      int sum(int a, [int b=2]){
      return a+b;
    }
    void main(){
      print(sum(10));
       print(sum(10,5));
    }


  ```

### EXPLAIN : Can named arguement be ommited? Show an example
- The named arguement can be ommited but make sure that the function is not requried.

  ```Dart
          int getArea({int width = 5, int height = 2}){
          return width*height;
        }
        void main(){
          print(getArea());
          print(getArea(width: 6));
        }

  ```

  ## Arrow Syntax:


  ```Dart 

  //Define a function using arrow syntax that squares a number
  int squares(int num) => num*num;
  // Call the arrow function and print the result
  void main(){
  print(squares(2));
  print(squares(5));
}

```

  











