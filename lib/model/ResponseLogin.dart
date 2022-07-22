import 'package:smartpanel/model/UsuarioLogin.dart';

class ResponseLogin {
  String? token;
  String? dataEmissaoToken;
  String? dataValidadeToken;
  UsuarioLogin? usuario;

  ResponseLogin.fromJSON(Map json)
      : token = json['token'],
        dataEmissaoToken = json['dataEmissaoToken'],
        dataValidadeToken = json['dataValidadeToken'],
        usuario = json['usuario'] != null ? UsuarioLogin.fromJson(json['usuario']) : null;

}
