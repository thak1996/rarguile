import 'dart:convert';

class RegisterModel {
  String? nome;
  String? email;
  String? senha;
  String? codigoAcesso;

  RegisterModel({this.nome, this.email, this.senha, this.codigoAcesso});

    Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': email,
      'nome': nome,
      'senha': senha,
      'codigoAcesso': codigoAcesso,
    };
  }


  // 
  factory RegisterModel.fromMap(Map<String, dynamic> json) {
    return RegisterModel(
      email: json['email'],
      nome: json['nome'],
      senha: json['senha'],
      codigoAcesso: json['codigoAcesso'],
    );
  }

    factory RegisterModel.fromJson(String source) {
    return RegisterModel.fromMap(json.decode(source) as Map<String, dynamic>);
  }

    String toJson() {
    return json.encode(toMap());
  }
  
}