import 'dart:ui';

import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  int nDado;
  String foto;
  Resultado(this.nDado){
    if(this.nDado == 1){
      this.foto = 'img/um.png';
    }else if(this.nDado == 2){
      this.foto = 'img/dois.png';
    }else if(this.nDado == 3){
      this.foto = 'img/tres.png';
    }else if(this.nDado == 4){
      this.foto = 'img/quatro.png';
    }else if(this.nDado == 5){
      this.foto = 'img/cinco.png';
    }else if(this.nDado == 6){
      this.foto = 'img/seis.png';
    }
  }

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jogo dos dados'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        padding: EdgeInsets.all(25),
        child: Column(
          children: <Widget>[
            Image.asset('${widget.foto}'),
          ],
        ),
      ),
    );
  }
}