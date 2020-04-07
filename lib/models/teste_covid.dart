import 'package:flutter/cupertino.dart';

class TesteCovid {
  int _idTesteCovid;
  String _nomeEstabelecimento;
  String _postadoPor;
  String _mensagem;
  String _dataPostagem;

  int get idTesteCovid => _idTesteCovid;

  set idTesteCovid(int value) {
    _idTesteCovid = value;
  }

  String get nomeEstabelecimento => _nomeEstabelecimento;

  set nomeEstabelecimento(String value) {
    _nomeEstabelecimento = value;
  }

  String get postadoPor => _postadoPor;

  String get mensagem => _mensagem;

  set mensagem(String value) {
    _mensagem = value;
  }

  set postadoPor(String value) {
    _postadoPor = value;
  }

  String get dataPostagem => _dataPostagem;

  set dataPostagem(String value) {
    _dataPostagem = value;
  }
}
