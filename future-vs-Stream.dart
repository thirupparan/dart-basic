void main() async {
  // Future work it below one
  final list = [1, 2, 3];
  //future vs stream
  var valueList = await Future.value(list);
  print(valueList);

  //Stream work this way below
  final stream = Stream.fromIterable(list);
  stream.listen(
    (value) {
      print('recived data');
      print(value);
    },
    onError: (err) => print('Error:$err'),
    onDone: () => print('Done'),
  );
  //future then funcation call back
  getName().then((value) {
    //print('recived data');
    print('11111111111$value');
  });
  //future key word call it
  var name = await getName();
  print(name);
  print('hello');
  print('world');
}

//future

Future<String> getName() {
  return Future.value('thiru');
}
