import 'package:flutter/material.dart';
import 'package:manejo_estado_app/src/pages/bloc_page.dart';
import 'package:manejo_estado_app/src/pages/home_page.dart';
import 'package:manejo_estado_app/src/pages/provider_page.dart';
import 'package:manejo_estado_app/src/pages/set_state.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (BuildContext context) => HomePage(),
        '/setState': (BuildContext context) => SetState(),
        '/blocPage1': (BuildContext context) => BlocPage1(),
      },
    );
  }
}
