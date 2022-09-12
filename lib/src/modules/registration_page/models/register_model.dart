// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class RegisterModel {
  String? nome;
  String? email;
  String? senha;
  String? codigoAcesso;

  RegisterModel({
    this.nome,
    this.email,
    this.senha,
    this.codigoAcesso,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'email': email,
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

  factory RegisterModel.fromJson(String source) =>
      RegisterModel.fromMap(json.decode(source) as Map<String, dynamic>);

  String toJson() => json.encode(toMap());

  RegisterModel copyWith({
    String? nome,
    String? email,
    String? senha,
    String? codigoAcesso
  }) {
    return RegisterModel(
      nome: nome ?? this.nome,
      email: email ?? this.email,
      senha: senha ?? this.senha,
      codigoAcesso: codigoAcesso ?? this.codigoAcesso,
    );
  }
}
