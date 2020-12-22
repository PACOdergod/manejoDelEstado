import 'dart:async';

class Bloc1 {
  int numero = 0;
  Stream<int> get getNumero async* {
    for (var i = 0; i < 5; i++) {
      await Future.delayed(Duration(seconds: 2));
      numero++;

      yield numero;
    }
  }

  var _contador = new StreamController<int>();
  Stream<int> get getContador => _contador.stream;

  Bloc1() {
    getNumero.listen((event) => _contador.add(event));
  }

  dispose() {
    _contador.close();
  }
}
