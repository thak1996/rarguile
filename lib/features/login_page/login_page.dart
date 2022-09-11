import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/features/login_page/controller/login_controller.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_input_password.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/home/datasource/home_datasource.dart';
import 'package:rarguile/src/login/datasource/login_datasource.dart';
import 'package:rarguile/src/service/http_service.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/validation/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formMasterKey = GlobalKey<FormState>();
  final ValueNotifier<bool> _obscureText = ValueNotifier<bool>(false);
  
  final service = HttpService();
  late final datasource = LoginDataSource(service);
  late final datasourceGet = VideosDataSource(service);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formMasterKey,
        child: SingleChildScrollView(
          child: Container(
            height: screenSize(context).height,
            width: screenSize(context).width,
            decoration: const BoxDecoration(color: whiteColor),
            child: Padding(
              padding: const EdgeInsets.only(right: 50, left: 50),
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
                    controller: loginController,
                    hintText: 'Digite seu email',
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Digite seu email',
                    validator: Validator.validateEmail,
                  ),
                  SizedBox(height: screenSize(context).height * .014),
                  ValueListenableBuilder<bool>(
                    valueListenable: _obscureText,
                    builder: (context, value, _) => DsInputFieldPass(
                      onSaved: (value) {},
                      suffixIcon: GestureDetector(
                        onTap: () {
                          _obscureText.value = !value;
                        },
                        child: Icon(
                          value ? Icons.visibility : Icons.visibility_off,
                          color: azulVioleta,
                        ),
                      ),
                      obscureText: value,
                      controller: passwordController,
                      hintText: 'Digite sua senha',
                      keyboardType: TextInputType.visiblePassword,
                      labelText: 'Digite sua senha',
                      validator: Validator.validatePassword,
                    ),
                  ),
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
                              color: primaryColor, backgroundColor: whiteColor),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenSize(context).height * .066),
                  DsOutlinedButton(
                    label: 'Entrar',
                    backGroundColor: whiteColor,
                    textStyle: h6Primary,
                    onPressed: () async {
                      final value = await datasource.login(
                          email: 'franklyn_vs_@hotmail.com',
                          password: 'raro123');
                      LoginController.user = value.toJson();
                      LoginController.saveUser(LoginController.user!, service);
                      print(LoginController.user);
                      // // formMasterKey.currentState!.validate()
                      // //     ? Modular.to.pushNamed('/home/users/')
                      // //     : debugPrint('Dados incorretos, tente novamente!');
                      Modular.to.pushNamed('/home/users/');
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
