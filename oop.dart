void main() {
//   final person = Person(name: 'thirupparan', age: 26, height: 60.0);
//   print(person.describe());
  final employee = Employee(
      name: 'thirupparan',
      age: 26,
      height: 60.0,
      taxCode: 'Abc123',
      salary: 50000);
  employee.sayName();
  print(employee);
}

class Person {
  final String name;
  final int age;
  final double height;

  Person({this.name, this.age, this.height});

  String describe() => "hello,I'm $age years old,I'm $height meters tall";
  void sayName() => print("hello, I'm $name");

  @override
  String toString() => 'name=$name,age:$age,height:$height';
}

class Employee extends Person {
  Employee({String name, int age, double height, this.taxCode, this.salary})
      : super(name: name, age: age, height: height);
  final String taxCode;
  final int salary;
  
  @override
  String toStrin()=>"${super.toString()},taxCode:$taxCode,salary:$salary";
}
