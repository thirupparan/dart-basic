void main() {
  printOddEven(6);
  printOddEven(5);
}

void printOddEven(int value) {
  final type = (value % 2 == 0) ? 'even' : 'odd';
  print('$value is $type');
}
