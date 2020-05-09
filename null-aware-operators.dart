//NUll Aware operator 
//(?.), (??), (??=)


class Num{
  int num = 10;
 
}
main(){
  var n= Num();
  int number;
//   if(n != null){
//     number = n.num;
//   }
  
/*not null check here and n is a object 
 * n is null default value assign 100 print 
 */
  number = n?.num ?? 100;
  print(number);
}
