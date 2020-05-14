import 'dart:async';

void main() {
  final _controller = StreamController<int>();
  final stream = _controller.stream;
  final sub = stream.listen(null);

  sub.onData((value) {
    if(value == 2){
      sub.cancel();
    }
    print(value);
  });
  sub.onError((err) => print('Error:$err'));
  sub.onDone(() => print('Done'));
  _controller.sink.add(1);
  _controller.sink.add(2);
  //_controller.sink.add('thiru');
  _controller.close();
}
