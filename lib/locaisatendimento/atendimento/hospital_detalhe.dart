import 'package:flutter/material.dart';
import 'package:hack_for_good/locaisatendimento/locais_atendimento.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';

class HospitalDetalhe extends StatefulWidget {
  @override
  _HospitalDetalheState createState() => _HospitalDetalheState();
}

class _HospitalDetalheState extends State<HospitalDetalhe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("HOSPITAL"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          backgroundColor: Colors.blueAccent,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LocaisAtendimento()));
          }),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "HOSPITAL SANTA CRUZ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Icon(Icons.image,size: 125, color: Colors.blueAccent,),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "MENSAGEM",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "O hospital Santa Cruz atualmente se encontra disponivel para atender as pessoas com sintomas do COVID-19",
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "INFORMAÇÕES DO HOSPITAL",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "NOME: HOSPITAL SANTA CRUZ" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "BAIRRO: CENTRO",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "LAGRADOURO: RUA DAS ARAUCÁRIAS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "NÚMERO: 500",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                  Text(
                    "TELEFONE: (99) 9999-9999",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
