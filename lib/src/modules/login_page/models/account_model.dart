import 'dart:convert';

class AccountModel {
  AccountModel({
    this.email,
    this.id,
    this.token,
    this.name,
    this.password,
  });

  String? email;
  String? id;
  String? token;
  String? name;
  String? password;

  AccountModel copyWith({
    String? email,
    String? id,
    String? token,
    String? name,
    String? password,
  }) {
    return AccountModel(
      email: email ?? this.email,
      id: id ?? this.id,
      token: token ?? this.token,
      name: name ?? this.name,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'token': token,
      'email': email,
      'name': name,
    };
  }

  factory AccountModel.fromMap(Map<String, dynamic> map) {
    return AccountModel(
      name: map['nome'] != null ? map['nome'] as String : null,
      token: map['access_token'] != null ? map['access_token'] as String : null,
      id: map['id'] != null ? map['id'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory AccountModel.fromJson(String source) =>
      AccountModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Model(token: $token, email: $email, name: $name, id: $id)';
  }

  @override
  bool operator ==(covariant AccountModel other) {
    if (identical(this, other)) return true;

    return other.token == token &&
        other.email == email &&
        other.name == name &&
        other.id == id;
  }

  @override
  int get hashCode {
    return token.hashCode ^ email.hashCode ^ name.hashCode ^ id.hashCode;
  }
}
