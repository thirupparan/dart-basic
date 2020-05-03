//Objectives
// 1. Sets:
// --> Unorderd Collection
// --> All elements are unique

void main() {

  Set<String> countries = Set.from(["USA", "INDIA", "CHINA"]); //method 1:From List
  countries.add("Nepal");
  countries.add("Srilanka");
  print("\n");
  print(countries);
  Set<int> numbersSet = Set(); // Using Constructor
  //Insert Operation
  numbersSet.add(73);
  numbersSet.add(64);
  numbersSet.add(21);
  numbersSet.add(12);

  numbersSet.add(73); //Duplicate entries are ingnored
  numbersSet.add(73); //ingnored
  
  numbersSet.contains(73); //returns true if the element is found in set
  numbersSet.remove(64); //return true if the element was found and deleted
  
  numbersSet.isEmpty; //return true if the set is empty
  
  numbersSet.length; //returns number of elements in set
  
  //numbersSet.clear(); //Delete all elements
  
//   print("\n");
//   print(numbersSet);



  print("\n");
  for (int element in numbersSet) {
    //Using Individual Element (objects)
    print(element);
  }

  print("\n");
  numbersSet.forEach((element) => print(element)); //Using Lambda
}
