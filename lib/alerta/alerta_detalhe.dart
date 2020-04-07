import 'package:flutter/material.dart';
import 'package:hack_for_good/alerta/alerta_mapa.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';
import 'package:hack_for_good/models/alerta.dart';

class AlertaDetalhe extends StatelessWidget {
  List<Alerta> alertas;

  AlertaDetalhe() {
    loadAlertasList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("ALERTA VERMELHO"),
          backgroundColor: Colors.redAccent,
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.arrow_back),
            backgroundColor: Colors.redAccent,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AlertaMapa()));
            }),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemBuilder: itemBuilder,
                itemCount: this.alertas.length,
                padding: EdgeInsets.only(top: 10.0),
              ),
            ),
          ],
        ));
  }

  Widget itemBuilder(BuildContext context, int index) {
    Alerta alerta = this.alertas.elementAt(index);
    return Container(
        margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 10.0),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      "ALERTA " + alerta.idAlerta.toString(),
                      style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 350,
                    child: Text(alerta.descricao,
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Colors.redAccent)),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text("22:58 05/04/2020",
                        style: TextStyle(color: Colors.redAccent)),
                  ),
                ],
              ),
            )
          ],
        ));
  }

  void loadAlertasList() {
    this.alertas = List();

    Alerta alerta = new Alerta();
    alerta.idAlerta = 1;
    alerta.descricao =
        "Lave as mãos com água e sabão ou higienizador à base de álcool para matar vírus que podem estar nas suas mãos.";
    this.alertas.add(alerta);

    alerta = new Alerta();
    alerta.idAlerta = 2;
    alerta.descricao =
        "Mantenha pelo menos 1 metro de distância entre você e qualquer pessoa que esteja tossindo ou espirrando. Quando alguém tosse ou espirra, pulveriza pequenas gotas líquidas do nariz ou da boca, que podem conter vírus. Se você estiver muito próximo, poderá inspirar as gotículas – inclusive do vírus da COVID-19 se a pessoa que tossir tiver a doença.";
    this.alertas.add(alerta);

    alerta = new Alerta();
    alerta.idAlerta = 3;
    alerta.descricao =
        "Evite tocar nos olhos, nariz e boca. As mãos tocam muitas superfícies e podem ser infectadas por vírus. Uma vez contaminadas, as mãos podem transferir o vírus para os olhos, nariz ou boca. A partir daí, o vírus pode entrar no corpo da pessoa e deixá-la doente.";
    this.alertas.add(alerta);

    alerta = new Alerta();
    alerta.idAlerta = 4;
    alerta.descricao =
        "Certifique-se de que você e as pessoas ao seu redor seguem uma boa higiene respiratória. Isso significa cobrir a boca e o nariz com a parte interna do cotovelo ou lenço quando tossir ou espirrar (em seguida, descarte o lenço usado imediatamente). Gotículas espalham vírus. Ao seguir uma boa higiene respiratória, você protege as pessoas ao seu redor contra vírus responsáveis por resfriado, gripe e COVID-19.";
    this.alertas.add(alerta);

    alerta = new Alerta();
    alerta.idAlerta = 5;
    alerta.descricao =
        "Fique em casa se não se sentir bem. Se você tiver febre, tosse e dificuldade em respirar, procure atendimento médico. Siga as instruções da sua autoridade sanitária nacional ou local, porque elas sempre terão as informações mais atualizadas sobre a situação em sua área.";
    this.alertas.add(alerta);

    alerta = new Alerta();
    alerta.idAlerta = 6;
    alerta.descricao =
        "Pessoas doentes devem adiar ou evitar viajar para as áreas afetadas por coronavírus. Áreas afetadas são países, áreas, províncias ou cidades onde há transmissão contínua – não áreas com apenas casos importados.";
    this.alertas.add(alerta);
  }
}
