void main() {
  final person = Person(name: 'thiru', age: 26, height: 1.84, weight: 70);
  print(person.bmi);
}mixin BMI{
   double calculateBMI9(double weight, double height) {
    return weight / (height * height);
  }
}



class Person with BMI {
  final String name;
  final int age;
  final double height;
  final double weight;

  Person({this.name, this.age, this.height, this.weight});
  
//   double calculateBMI9() {
//     return weight / (height * height);
//   }
  
  double get bmi =>calculateBMI9(weight,height);
}

/*
 * mixin 
 * ---------------
 * extend the functionality of existing classes
 */

/*
 * important note 
 * ------------------------
 * classes and mixins cannot define the same variables
 * and method names
 */

/*
 * Using Mixins 
 * ---------------
 * create a mixin with variables and methods.
 * 
 * Add mixin to an existing class
 * 
 * call mixin variables and methods as needed
 */

/*
 * Why Mixins
 * --------------
 * Extract and reuse 
 * functinality in multiple classes 
 */
