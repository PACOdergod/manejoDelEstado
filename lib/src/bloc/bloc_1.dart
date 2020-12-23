import 'dart:async';

class Bloc1 {
  int numero = 0;
  Stream<int> get getNumero async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 2));
      numero++;

      yield numero;
    }
  }
}
