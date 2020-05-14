/// Inheritance in Dart
///
/// Types of Inheritance
/// Mainly there are three types of inheritance:
/// Single
/// Multiple - Dart doesn’t support Multiple Inheritance.
/// Multi-level

// ========> Single Inheritance <============
class Person{
  void showName(String name){
    print(name);
  }

  void showAge(int age){
    print(age);
  }
}


class Jay extends Person {}


void main() {
  var jay = new Jay();

  jay.showName("JD");
  jay.showAge(20);
}
