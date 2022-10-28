import 'package:flutter/material.dart';

class Esdeveniment {

  static final Esdeveniment _modelo = Esdeveniment._internal();

  factory Esdeveniment(){
    return _modelo;
  }

  Esdeveniment._internal()
      :
        _horaInici = const TimeOfDay(hour: 00, minute: 0),
        _horaFinal = const TimeOfDay(hour: 00, minute: 0),
        _titol = "",
        _descripcio = "";

  TimeOfDay _horaInici;
  TimeOfDay _horaFinal;
  String _titol;
  String _descripcio;

  TimeOfDay get horaInici => _horaInici;
  TimeOfDay get horaFinal => _horaFinal;
  String get titol  => _titol;
  String get descripcio => _descripcio;

  void setConfiguracion(
      {required TimeOfDay horaInici,
        required TimeOfDay horaFinal,
        required String titol,
        required String descripcio}){
    _horaInici = horaInici;
    _horaFinal = horaFinal;
    _titol = titol;
    _descripcio = descripcio;
  }
}