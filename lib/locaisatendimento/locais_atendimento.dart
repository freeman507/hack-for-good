import 'package:flutter/material.dart';
import 'package:hack_for_good/locaisatendimento/atendimento/Atendimento.dart';
import 'package:hack_for_good/locaisatendimento/testecovid/teste_covid.dart';
import 'package:hack_for_good/menu/custom_drawer.dart';

class LocaisAtendimento extends StatefulWidget {
  @override
  _LocaisAtendimentoState createState() => _LocaisAtendimentoState();
}

class _LocaisAtendimentoState extends State<LocaisAtendimento> {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'ATENDIMENTO'),
    Tab(text: 'TESTE COVID-19'),
  ];

  @override
  Widget build(BuildContext context) {
    return buildTabView(context);
  }

  buildTabView(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        drawer: CustomDrawer(),
        appBar: AppBar(
          title: Text("LOCAIS DE ATENDIMENTO"),
          centerTitle: true,
          bottom: TabBar(
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
            final String label = tab.text.toLowerCase();
            return buscaTela(label, context);
          }).toList(),
        ),
      ),
    );
  }

  Widget buscaTela(String label, BuildContext buildContext) {
    if (label == 'atendimento') {
      return Atendimento();
    } else {
      return TesteCovid();
    }
  }
}