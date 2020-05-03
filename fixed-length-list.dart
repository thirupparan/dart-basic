 /*
 * List types 
 * fixed-length list 
 * Length once defined cannot be changed
 * 
 * Growable list
 * Length is dynamic
 */

void main() {
 // Elements: 99 N 21 12
 //Index :    0 1 2 3 4
List<int>numberList = List(5); //Fixed-length list
   //Insert Operation
  numberList[0]=73;
  numberList[1]=64;
  numberList[3]=21;
  numberList[4]=12;
  
  numberList[0]=99; //Update operation
  numberList[1]=null; //Delete operation
  print("\n");
  print(numberList[0]);
  
  
//   numberList.add(24);    //Not Supported in fixed-length list
//   numberList.removeAt(3); //Not Supported in fixed-length list
//   numberList.clear(); //Not Supported in fixed-length list
//   numberList.remove(73); //Not Supported in fixed-length list
  
  print("\n");
  for(int element in numberList){ //Using Individual Element (objects)
    print(element);
  }
  
  print("\n");
  numberList.forEach((element)=>print(element)); //Using Lambda
  
  print("\n");
  for(int i =0; i<numberList.length; i++){ //Using Index
    
    print(numberList[i]);
  }
 
}
