import 'package:flutter/material.dart';
import 'package:manejo_estado_app/src/bloc/bloc_1.dart';

class BlocPage extends StatelessWidget {
  final numerosBloc = new Bloc1();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BlocPage'),
      ),
      body: StreamBuilder(
        stream: numerosBloc.getNumero,
        // initialData: initialData ,
        builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
          return Center(
              child: Text(snapshot.data.toString(),
                  style: TextStyle(
                    fontSize: 50.0,
                  )));
        },
      ),
    );
  }
}
