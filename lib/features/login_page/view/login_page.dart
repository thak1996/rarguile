import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/login_page/controller/login_store.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_input_password.dart';
import 'package:rarguile/src/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/validation/validator.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.store});
  final LoginStore store;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          decoration: const BoxDecoration(color: whiteColor),
          child: Padding(
            padding: const EdgeInsets.only(right: 50, left: 50),
            child: Form(
              key: widget.store.loginKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/RaroTube.png'),
                  SizedBox(height: screenSize(context).height * .046),
                  const Text(
                    'Seja bem-vindo à Raro Tube!',
                    style: h6Primary,
                  ),
                  SizedBox(height: screenSize(context).height * .090),
                  DsInputField(
                    hintText: 'Digite seu email',
                    labelText: 'Digite seu email',
                    keyboardType: TextInputType.emailAddress,
                    validator: Validator.validateEmail,
                    onChanged: (email) {
                      widget.store.setLogin(email: email);
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .014),
                  Observer(builder: (_) {
                    return DsInputFieldPass(
                        hintText: 'Digite sua senha',
                        keyboardType: TextInputType.visiblePassword,
                        labelText: 'Digite sua senha',
                        validator: Validator.validatePassword,
                        obscureText: widget.store.obscureText,
                        suffixIconCustom: widget.store.callObscureText,
                        onChanged: (password) {
                          widget.store.setLogin(password: password);
                        });
                  }),
                  SizedBox(height: screenSize(context).height * .014),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          Modular.to.pushNamed('/changePass/');
                        },
                        child: const DsText(
                          text: 'Esqueci minha senha',
                          style: TextStyle(
                              color: primaryColor,
                              backgroundColor: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize(context).height * .066),
                  DsOutlinedButton(
                    label: 'Entrar',
                    backGroundColor: whiteColor,
                    textStyle: h6Primary,
                    onPressed: () {
                      widget.store.loginKey.currentState!.validate()
                          ? Modular.to.pushNamed('/home/users/')
                          : Text('data');
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .014),
                  DsOutlinedButton(
                    label: 'Cadastrar',
                    onPressed: () {
                      Modular.to.pushNamed('/registration/');
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
