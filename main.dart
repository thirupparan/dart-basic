class Person {
  String name;
  int age;
  Person(this.name, this.age);

  Person.veryOld(this.name) {
    age = 60;
  }
}  

double addNumbers(double num1, double num2) {
  //print(num1 + num2);
  return num1 + num2;
}

void main() {
  Person p3 = new Person('jenanthan', 20);
  print(p3.name);
  
  var p4 = Person.veryOld('max');
  print(p4.name);
  print(p4.age);

  var p1 = Person('thiru', 20);
  var p2 = Person('thirupparan', 20);
  p2.name = 'thirupparan';
  print('HI THIS IS MY NAME :' + p1.name + 'age:-' + p1.age.toString());
  print(p2.name);
  double firstResult;
  firstResult = addNumbers(1, 1);
  print(firstResult + 1);
  print('Hey thiru!');
}
