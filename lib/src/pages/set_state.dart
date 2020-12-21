import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  @override
  _SetStateState createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  num cantidad = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maejo del estado'),
      ),
      body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [_boton1(), _boton3(), _boton2()],
              ),
              SizedBox(
                height: 20.0,
              ),
              _barraN(),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Una forma es usar setState que funcione con variables locales y tiene limitaciones',
                style: TextStyle(fontSize: 30.0),
              )
            ],
          )),
    );
  }

  Widget _boton1() {
    return GestureDetector(
      onTap: () => _aumentar(),
      child: Container(
        height: 60.0,
        width: 60.0,
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Text(
          '+1',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  Widget _boton2() {
    return GestureDetector(
      onTap: () => _restar(),
      child: Container(
        height: 60.0,
        width: 60.0,
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Text(
          '-1',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  Widget _boton3() {
    return GestureDetector(
      onTap: () => _cero(),
      child: Container(
        height: 60.0,
        width: 60.0,
        // padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Text(
          '0',
          style: TextStyle(fontSize: 40.0),
        ),
      ),
    );
  }

  Widget _barraN() {
    return Container(
        height: 70.0,
        width: double.infinity,
        color: Colors.amberAccent,
        child: Center(
          child: Text(
            cantidad.toString(),
            style: TextStyle(fontSize: 50.0),
          ),
        ));
  }

  void _aumentar() {
    setState(() {
      cantidad += 1;
    });
  }

  void _restar() {
    setState(() {
      cantidad -= 1;
    });
  }

  void _cero() {
    setState(() {
      cantidad = 0;
    });
  }
}
