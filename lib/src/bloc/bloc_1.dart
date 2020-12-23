import 'dart:async';

import 'package:manejo_estado_app/src/pages/set_state.dart';

class Bloc1 {
  int numero = 0;
  Stream<int> get getNumero async* {
    for (var i = 0; i < 10; i++) {
      await Future.delayed(Duration(seconds: 2));
      numero++;

      yield numero;
    }
  }

  int cantidad = 0;

  final _cantidadStream = StreamController<int>();
  final _cantidadAumentar = StreamController<int>();
  final _cantidadDisminuir = StreamController<int>();

  Stream<int> get obtenerCantidad => _cantidadStream.stream;
  StreamSink<int> get obtenerCantidadSink => _cantidadStream.sink;

  StreamSink<int> get aumentarCantidad => _cantidadAumentar.sink;
  StreamSink<int> get disminuirCantidad => _cantidadDisminuir.sink;

  Bloc1() {
    _cantidadStream.add(cantidad);
    _cantidadAumentar.stream.listen(_sumar);
    _cantidadDisminuir.stream.listen(_restar);
  }

  void _sumar(int numero) {
    this.cantidad += numero;
    obtenerCantidadSink.add(cantidad);
  }

  void _restar(int numero) {
    this.cantidad -= numero;
    obtenerCantidadSink.add(cantidad);
  }

  void dispose() {
    _cantidadStream.close();
    _cantidadAumentar.close();
    _cantidadDisminuir.close();
  }
}
