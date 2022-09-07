class Validator {
  static String? validateName(String? value) {
    final rfc5322 = RegExp(r'(^[a-zA-Z ]*[A-Z][a-z]* [A-Z][a-z])');

    if (value == null || value.isEmpty) {
      return 'O campo não pode ser vazio';
    }
    if (!value.contains(rfc5322)) {
      return 'Nome inválido, digite seu nome corretamente';
    }
  }

  static String? validateEmail(String? value) {
    final rfc5322 = RegExp(
        r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])+");

    if (value == null || value.isEmpty) {
      return 'O campo não pode ser vazio';
    }

    if (value.contains(' ')) {
      return 'O campo não pode conter espaços';
    }
    if (!value.contains(rfc5322)) {
      return 'Email inválido, digite um email corretamente';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'O campo não pode ser vazio';
    }
    String pattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~_]).{8,}$';
    RegExp regExp = RegExp(pattern);
    if (!regExp.hasMatch(value)) {
      return 'A senha não é considerada uma senha forte';
    }
  }
}
