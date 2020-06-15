import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage>{

  final _estiloTexto = new TextStyle( fontSize: 30);
  int _conteo = 0;

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
           title: Text('StateFul'),
           backgroundColor: Colors.yellow,
           elevation: 0,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Número de Clicks', style: _estiloTexto),
              Text(_conteo.toString(), style: _estiloTexto),
            ],
          ),
        ),
        floatingActionButton: _crearBotones()
      );
    }

    Widget _crearBotones(){
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
            SizedBox( width: 30.0),
            FloatingActionButton( onPressed: _reiniciar,
            child: Icon(Icons.exposure_zero)),
            Expanded(child: SizedBox( width: 30.0)),
            FloatingActionButton( onPressed: _restar,
            child: Icon(Icons.remove)),
            SizedBox( width: 30.0),
            FloatingActionButton( onPressed: _agregar,
            child: Icon(Icons.add))

        ],
      );
    }
     void _agregar(){
        setState(() => _conteo++);
      }

      void _reiniciar(){
        setState(() => _conteo = 0);
      }

      void _restar(){
        setState(() => _conteo--);
      }

}