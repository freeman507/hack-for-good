import 'package:flutter/material.dart';
import 'package:hack_for_good/locaisatendimento/locais_atendimento.dart';

class Atendimento extends StatefulWidget {
  @override
  _AtendimentoState createState() => _AtendimentoState();
}

class _AtendimentoState extends State<Atendimento> {
  RangeValues _values = RangeValues(0.3, 0.7);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(25, 20, 10, 5),
                child: Text(
                  "Distância (Km)",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: RangeSlider(
                      values: _values,
                      onChanged: (RangeValues range) {
                        setState(() {
                          _values = range;
                        });
                      },
                    ),
                  )
                ],
              )
            ],
          )),
          Expanded(
              child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => LocaisAtendimento()));
            },
            child: Image.asset(
              "images/mapa.png",
              fit: BoxFit.fill,
            ),
          ))
        ],
      ),
    );
  }
}
