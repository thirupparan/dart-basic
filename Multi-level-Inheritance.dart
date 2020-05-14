/// Inheritance in Dart
///
/// Types of Inheritance
/// Mainly there are three types of inheritance:
/// Single
/// Multiple - Dart doesn’t support Multiple Inheritance.
/// Multi-level

// ========> Multi-level Inheritance <============
class Person{
  void showName(String name){
    print(name);
  }

  void showAge(int age){
    print(age);
  }
}


class Jay extends Person {
  void showProfession(String profession) {
    print(profession);
  }

  void showNationality(String nationality) {
    print(nationality);
  }
}

//Derived class created from another derived class.
class Sanket extends Jay {} 


void main() {
  var sanket = new Sanket();

  sanket.showName("JD");
  sanket.showAge(20);
  sanket.showProfession('Engineer');
  sanket.showNationality('Srilanka');
}
