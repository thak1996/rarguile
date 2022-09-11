import 'dart:convert';

class User {
  String accessToken;
  String nome;
  String admin;
  String foto;
  String id;

  User(
      {required this.accessToken,
      required this.nome,
      required this.admin,
      required this.foto,
      required this.id});

    Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'access_token': accessToken,
      'nome': nome,
      'admin': admin,
      'foto': foto,
      'id': id,
    };
  }


  // 
  factory User.fromMap(Map<String, dynamic> json) {
    return User(
      accessToken: json['access_token'],
      nome: json['nome'],
      admin: json['admin'].toString(),
      foto: json['foto'],
      id: json['id'],
    );
  }

    factory User.fromJson(String source) {
    return User.fromMap(json.decode(source) as Map<String, dynamic>);
  }

    String toJson() {
    return json.encode(toMap());
  }
}
