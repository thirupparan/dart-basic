void main() {
 var isLoggedIn = false;
  var userName ='thiru';
  var password ='tester';
  var age = 25;
  var hasCorrectCredentials = userName == 'thiru' && password =='tester';
  if(userName == 'thiru' && password =='tester' || age > 20){
    print('Logged in !');
  }else{
    print('Failed');
  }
}
