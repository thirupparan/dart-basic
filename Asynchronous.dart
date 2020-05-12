//Asynchronous programming
/*
 * Future
 * Async
 * Await
 * Then
 * 
 * follwing the link you get better understand 
 * https://www.youtube.com/watch?v=g9Uk1Xou0m4
 */

import 'dart:async';
//All function decleared below runs on Main UI thread.
  void main() { 
  print('Main program: starts');
    printFileContent();
    print('Main programe: Ends');
}

//============>>Async and Await key work use to call Asynchronous way below <<===========
printFileContent()async{
  String fileContent = await downLoadAFile();
  print("The content of the file is ---> $fileContent");
}


//==========>>future function call Asynchronous way below <<===========

// printFileContent(){
//   Future<String>fileContent = downLoadAFile();
//   fileContent.then((resultString){
//     print("The content of the file is ---> $resultString");
//   });
// }

//To download a file [Dummy long runing operation]
Future<String> downLoadAFile(){
  Future<String>result = Future.delayed(Duration(seconds: 6),(){
    return 'My secret file content';
  });//Future.delayed.
  return result;
}
