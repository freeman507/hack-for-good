import 'package:flutter/material.dart';
import 'package:hack_for_good/locaisatendimento/testecovid/teste_covid_detalhe.dart';
import 'package:hack_for_good/models/teste_covid.dart';

class TesteCovidList extends StatelessWidget {
  List<TesteCovid> testeCovidList;

  TesteCovidList() {
    loadTesteCovidList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                      labelText: "Procurar...",
                      labelStyle: TextStyle(color: Colors.blueAccent)),
                  style: TextStyle(color: Colors.blueAccent, fontSize: 15.0),
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: itemBuilder,
              itemCount: this.testeCovidList.length,
              padding: EdgeInsets.only(top: 10.0),
            ),
          )
        ],
      ),
    );
  }

  Widget itemBuilder(BuildContext context, int index) {
    TesteCovid testeCovid = this.testeCovidList.elementAt(index);
    return InkWell(
      key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TesteCovidDetalhe(testeCovid)));
      },
      child: Container(
          margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 10.0),
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10.0),
                child: Icon(
                  Icons.image,
                  size: 75,
                  color: Colors.blueAccent,
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      child: Text(
                        "Postado por " + testeCovid.postadoPor,
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
                      width: 275,
                      child: Text(
                        testeCovid.mensagem,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, .0, .0, 10.0),
                      child: Text(
                        "22:58 05/04/2020",
                        style: TextStyle(color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }

  void loadTesteCovidList() {
    this.testeCovidList = List();

    TesteCovid testeCovid = new TesteCovid();
    testeCovid.idTesteCovid = 1;
    testeCovid.nomeEstabelecimento = "Fármacia Viva Bem";
    testeCovid.postadoPor = "Felipe Zanella";
    testeCovid.mensagem = "Fármacia Viva Bem está apta para testes!";
    testeCovid.dataPostagem = "06/04/2020 22:04";
    this.testeCovidList.add(testeCovid);

    testeCovid = new TesteCovid();
    testeCovid.idTesteCovid = 2;
    testeCovid.nomeEstabelecimento = "Unidade Central de Saúde";
    testeCovid.postadoPor = "Fulano de tal";
    testeCovid.mensagem = "Unidade de Saúde Central não está fazendo testes!";
    testeCovid.dataPostagem = "06/04/2020 19:30";
    this.testeCovidList.add(testeCovid);

    testeCovid = new TesteCovid();
    testeCovid.idTesteCovid = 3;
    testeCovid.nomeEstabelecimento = "Laboratório Lab Life";
    testeCovid.postadoPor = "Felipe Zanella";
    testeCovid.mensagem = "Faça seu teste de COVID-19 no laboratório Lab Life!";
    testeCovid.dataPostagem = "06/04/2020 13:16";
    this.testeCovidList.add(testeCovid);

    testeCovid = new TesteCovid();
    testeCovid.idTesteCovid = 4;
    testeCovid.nomeEstabelecimento = "Fármacia São José";
    testeCovid.postadoPor = "Fulano de tal";
    testeCovid.mensagem = "Faça seu teste de COVID-19 na Farmácia São José!";
    testeCovid.dataPostagem = "06/04/2020 10:15";
    this.testeCovidList.add(testeCovid);
  }
}
