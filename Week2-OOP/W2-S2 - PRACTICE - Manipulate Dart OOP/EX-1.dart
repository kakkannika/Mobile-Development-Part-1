enum Skill{FLUTTER,DART,OTHERS,HTML,CSS,JavaScript}
class Address{
          final String _street;
          final String _city;
          final String _zipCode;
          

          Address({
            required String street,
            required String city,
            required String zipCode,
            

          }):this._street = street,
              this._city = city,
              this._zipCode  = zipCode;

          // useing override 
          @override
          String toString(){
            return 'Street:$_street, City:$_city,ZipCode:$_zipCode';
          }

          // use getter constructor 
          String get street =>_street;
          String get city =>_city;
          String get zipCode => _zipCode;

        
}
class Employee{
    final  String _name;
    final  double _baseSalary;
    final  int _yearOfExperience;
    late final List<Skill> _skills;
     Address _address;

// use constructor 
Employee({
      required String name,
      required double baseSalary,
      required int yearOfExperience,
      required List<Skill> skills,
      required Address address
    }): this._name = name,
        this._baseSalary = baseSalary,
        this._yearOfExperience = yearOfExperience,
        this._skills = skills,
        this._address = address;

Employee.MobileDeveloper({
      required String name,
      required int yearOfExperience,
      required double baseSalary,
      required Address address
    }): this._name = name,
        this._baseSalary = baseSalary,
        this._address = address, 
        this._yearOfExperience = yearOfExperience,
        this._skills = [Skill.DART, Skill.FLUTTER];

  // create another name constructor 
  Employee.FrontEndDeveloper(
    {
      required String name,
      required int yearOfExperience,
      required double baseSalary,
      required Address address
      
    }): this._name = name,
        this._baseSalary = baseSalary,
        this._address = address, 
        this._yearOfExperience = yearOfExperience,
        this._skills = [Skill.HTML, Skill.CSS,Skill.JavaScript];

    // use getter 

    String get name =>_name;
    double get baseSalary =>_baseSalary;
    int get yearOfExperience => _yearOfExperience;
    Address get address => _address;
    List<Skill> get skills => _skills;


  // Q4: Compute salary 

   double  computeSalary(){
    double new_Salary = 40000+(_yearOfExperience * 2000);
    for(var skill in skills){
      if(skill ==Skill.FLUTTER){
        new_Salary +=5000;

      }else if(skill==Skill.DART){
        new_Salary += 3000;
      }else if(skill==Skill.OTHERS){
        new_Salary +=1000;
      }
    }
    return new_Salary;
   
    
   
   }

    // print details 
      void printDetails(){
      print('Name:$_name,baseSalary:\$${_baseSalary},yearOfExperience:$_yearOfExperience,');
      print('Address:$_address');
      print('Skills:$_skills');
      print('ComputeSalary:\$${computeSalary()}');
    }
  
}

void main(){
  print('#########Information of employee1 ############');
  final  Address address =Address(street: '271 st', city: 'Phnom Penh', zipCode: '1A13');
  final emp1 = Employee.MobileDeveloper(name: 'Kannika', yearOfExperience: 5, baseSalary:40000, address: address);
  emp1.printDetails();
  emp1.computeSalary();

  print('#########Information of employee2############');

  final Address address2 = Address(street: '123 st', city: 'Phnom Penh', zipCode: '1B15');
  final emp2 = Employee.FrontEndDeveloper(name: 'Viriya', yearOfExperience: 3, baseSalary:20000, address: address);
  emp2.printDetails();
  emp2.computeSalary();
}