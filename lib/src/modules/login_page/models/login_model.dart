class LoginModel {
  LoginModel({
    this.email,
    this.password,
  });

  String? email;
  String? password;

  LoginModel copyWith({
    String? email,
    String? password,
  }) {
    return LoginModel(
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }
}
