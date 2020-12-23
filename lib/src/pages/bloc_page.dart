import 'package:flutter/material.dart';
import 'package:manejo_estado_app/src/bloc/bloc_1.dart';

class BlocPage1 extends StatefulWidget {
  @override
  _BlocPageState createState() => _BlocPageState();
}

class _BlocPageState extends State<BlocPage1> {
  final numerosBloc = new Bloc1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocPage'),
      ),
      body: Column(
        children: [
          _cantidad2(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    numerosBloc.aumentarCantidad.add(1);
                  }),
              IconButton(
                  icon: Icon(Icons.remove),
                  onPressed: () {
                    numerosBloc.disminuirCantidad.add(1);
                  })
            ],
          )
        ],
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
}
