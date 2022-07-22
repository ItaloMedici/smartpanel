class UsuarioEmpresa {
  int? identificador;
  String? nomeEmpresa;

  UsuarioEmpresa.fromJson(Map json) :
        identificador = json['identificador'],
        nomeEmpresa = json['nomeEmpresa'];

  static List<UsuarioEmpresa> fromJsonList(List? json) {
    if (json == null) return [];

    List<UsuarioEmpresa> ret = [];
    for (Map n in json) {
      ret.add(UsuarioEmpresa.fromJson(n));
    }

    return ret;
  }
}