import 'package:flutter/material.dart';
import 'package:hack_for_good/alerta/alerta_detalhe.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';

class AlertaMapa extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      appBar: AppBar(
        title: Text("ALERTAS"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: InkWell(
          key: Key(DateTime.now().millisecondsSinceEpoch.toString()),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AlertaDetalhe()));
          },
          child: Image.asset("images/alerta.png", fit: BoxFit.fill,),
        ),
      )
    );
  }
}
