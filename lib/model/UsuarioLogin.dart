import 'package:smartpanel/model/UsuarioEmpresa.dart';

class UsuarioLogin {
  int? identificador;
  String? loginLogin;
  List<UsuarioEmpresa>? empresas;
  String? pessoaNome;
  String? tokenAcessoLogin;
  int? idEmpresaLogada;
  String? nomeEmpresaLogada;

  UsuarioLogin.fromJson(Map json):
    identificador = json["identificador"],
    loginLogin = json["loginLogin"],
    pessoaNome = json["pessoaNome"],
    tokenAcessoLogin = json["tokenAcessoLogin"],
    idEmpresaLogada = json["idEmpresaLogada"],
    nomeEmpresaLogada = json["nomeEmpresaLogada"],
    empresas = UsuarioEmpresa.fromJsonList(json['empresas']);
}