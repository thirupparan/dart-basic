// Synchronous - return an iterable object
// Asynchronous - return a Stream object
//https://www.youtube.com/watch?v=uRG_-Rlk1pA&list=PLlMOodDAsO4xrTgVEkKXfVf7sSVEsmWKQ&index=15
/*
What is Iterable object?

-collection of values

what is Stream object ?

- Asynchronous data events
*/

import 'dart:io';

// Synchronous
Iterable<int> countStream(int max) sync* {
  for (int i = 0; i < max; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

// Asynchronous
Stream<int> countStream1(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
    sleep(Duration(seconds: 1));
  }
}

void main() {
  print('start');
  // Synchronous
  //countStream(5).forEach((data) => print(data));
  // Asynchronous
  countStream1(5).listen((data) => print(data));
  print('end');
}
