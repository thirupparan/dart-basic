void main() {
  print("\n");
  for (var i = 0; i <= 10; i++) {
    print(i);
  }

  // for in loop
  print("\n");
  var number = [1, 2, 3];
  for (var n in number) {
    print(n);
  }

  //standerd for loop
  print("\n");
  for (var i = 0; i < number.length; i++) {
    print(number[i]);
  }

  //for eatch loop
  print("\n");
  number.forEach((n) => print(n));

  print("\n");
  number.forEach(printNum);
}

void printNum(num) {
  print(num);
}
