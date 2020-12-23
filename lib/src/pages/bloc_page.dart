import 'package:flutter/material.dart';
import 'package:manejo_estado_app/src/bloc/bloc_1.dart';

class BlocPage extends StatefulWidget {
  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage> {
  final numerosBloc = new Bloc1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocPage'),
      ),
      body: Column(
        children: [_cantidad2()],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('+'),
      ),
    );
  }

  _cantidad2() {
    return Container(
      child: StreamBuilder(
        stream: numerosBloc.obtenerCantidad,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          print(snapshot.data);
          return Container(
            child: Center(
              child: Text(
                snapshot.data.toString(),
                style: TextStyle(fontSize: 40.0),
              ),
            ),
          );
        },
      ),
    );
  }

  _cantidad() {
    return StreamBuilder(
      stream: numerosBloc.getNumero,
      // initialData: initialData ,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Center(
            child: Text(snapshot.data.toString() ?? ['0'],
                style: TextStyle(
                  fontSize: 50.0,
                )));
      },
    );
  }
}
