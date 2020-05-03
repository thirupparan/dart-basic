void main() {
  //Elements : 99 N 21 12
  //Index :    0  1  2  3

  List<String> countries = ["USA", "INDIA", "CHINA"]; //method 1:Growable List
  countries.add("Nepal");
  countries.add("Srilanka");
  print("\n");
  print(countries);
  List<int> numberList = List(); //method 2: Growable List
  //Insert Operation
  numberList.add(73);
  numberList.add(64);
  numberList.add(21);
  numberList.add(12);

  numberList[0] = 99; //Update operation
  numberList[1] = null; //Delete operation
  print("\n");
  print(numberList[0]);

//   numberList.remove(99);
//   numberList.add(24);
//   numberList.removeAt(3);
//   numberList.clear();

  print("\n");
  for (int element in numberList) {
    //Using Individual Element (objects)
    print(element);
  }

  print("\n");
  numberList.forEach((element) => print(element)); //Using Lambda

  print("\n");
  for (int i = 0; i < numberList.length; i++) { //Using Index

    print(numberList[i]);
  }
}
