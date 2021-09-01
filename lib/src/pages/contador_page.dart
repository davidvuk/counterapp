import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 30);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppCounter Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Number push',
              style: _estiloTexto,
            ),
            Text(
              '$_conteo',
              style: TextStyle(fontSize: 45),
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: reset,
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          onPressed: agregar,
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 15,
        ),
        FloatingActionButton(
          onPressed: sustraer,
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }

  void agregar() {
    setState(() {
      _conteo++;
    });
  }

  void sustraer() {
    setState(() {
      _conteo--;
    });
  }

  void reset() {
    setState(() {
      _conteo = 0;
    });
  }
}
