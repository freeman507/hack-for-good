import 'package:flutter/material.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';

class Configuracao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("CONFIGURAÇÕES"),
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
                "INFORMAÇÕES DO USUÁRIO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Icon(
              Icons.account_box,
              size: 125,
              color: Colors.blueAccent,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "NOME: FELIPE ZANELLA",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text(
                    "BAIRRO: CENTRO",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text(
                    "LAGRADOURO: RUA DAS ARAUCÁRIAS",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text(
                    "NÚMERO: 500",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                  Text(
                    "TELEFONE: (99) 9999-9999",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: Text(
                "PERMISSÕES DO APP",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 0, 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text("Receber notificação de novos produtos!", style: TextStyle(color: Colors.blueAccent))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text("Permitir usar localização!", style: TextStyle(color: Colors.blueAccent))
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Switch(
                        value: true,
                        onChanged: (value) {},
                      ),
                      Text("Receber novos alertas!", style: TextStyle(color: Colors.blueAccent),)
                    ],
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
