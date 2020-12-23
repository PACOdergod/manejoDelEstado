import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estado'),
      ),
      body: Column(
        children: [
          Text(
            'Diferentes formas de manejar el estado de la aplicacion',
            style: TextStyle(fontSize: 25.0),
          ),
          SizedBox(
            height: 30.0,
          ),
          _boton1(context),
          _boton2(context),
        ],
      ),
    );
  }

  Widget _boton1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: Card(
        color: Colors.cyan[50],
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, '/setState'),
          leading: Container(
            child: Icon(Icons.ac_unit),
          ),
          title: Text(
            'SetState',
            style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
          // subtitle: Text(''),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }

  Widget _boton2(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      child: Card(
        color: Colors.cyan[100],
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, '/blocPage1'),
          leading: Container(
            child: Icon(Icons.ac_unit),
          ),
          title: Text(
            'BLOC',
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          // subtitle: Text(''),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
