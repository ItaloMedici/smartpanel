class RequisicaoLogin {
  String? username;
  String? password;
  int? company;

  RequisicaoLogin(this.username, this.password, this.company);

  Map<String, dynamic> toJson() => {
    "username": username,
    "password": password,
    "company": company,
  };
}