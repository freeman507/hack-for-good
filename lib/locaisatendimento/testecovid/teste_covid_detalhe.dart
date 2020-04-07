import 'package:flutter/material.dart';
import 'package:hack_for_good/locaisatendimento/locais_atendimento.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';
import 'package:hack_for_good/models/teste_covid.dart';

class TesteCovidDetalhe extends StatelessWidget {

  TesteCovid testeCovid = TesteCovid();

  TesteCovidDetalhe(TesteCovid testeCovid) {
    this.testeCovid = testeCovid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text("TESTE COVID-19"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                testeCovid.nomeEstabelecimento ?? "",
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
                testeCovid.mensagem,
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Text(
                "INFORMAÇÕES DO ESTABELECIMENTO",
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
                    "NOME: " + this.testeCovid.nomeEstabelecimento.toString(),
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