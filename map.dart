void main() {
  Map<String,int>thiru={ /// method 1:using Literal 
    'Thiru':26,
    'Pirathi':32,
    'Senthu':44,
    
  }; 
  print("\n");
  print("Thiru is ${thiru['Thiru']} Years old ");
 
/*
 * Map it is unorderd collection of key-      value pair
 Key -value can be of any object type
 *Each key in a map should be unique
 *The value can be repeated
 
 * Commonly called as hash or dictionary
  
 * Size of map is not fixed it can increase or de number of elements
 * HasMap 
    *implementaion of map 
    *Based on has-table
  */
  Map<String,String>fruites = Map();//method: using Constructor
  fruites["apple"]="red";
  fruites["banana"]="Yello";
  fruites["gueva"]="green"; 
  
   print("\n");
  print(fruites["apple"]);
  
  fruites.containsKey("apple"); //return true if the KEY is present in map
  
  fruites.update("apple",(value)=>"green"); //update the value for the given Key 
  
  fruites.remove("apple"); //remove Key and it is value and return value
  
  fruites.isEmpty; //return true if the map is empty
  
  fruites.length; //return number of elements in map
  
  //fruites.clear(); //delete all elements
  
   print("\n");
  
  for(String key in fruites.keys){ //print all keys here
    print(key);
  }
   print("\n");
  
   for(String value in fruites.values){ //print all Value here
    print(value);
  }
  print("\n");
  
  fruites.forEach((key,value)=>print("key $key value $value")); //using Lambda expression 
}
