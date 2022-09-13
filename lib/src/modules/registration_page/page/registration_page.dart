import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/shared/validation/validator.dart';

import '../controller/registration_store.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final RegistrationStore store = Modular.get<RegistrationStore>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          decoration: const BoxDecoration(color: whiteColor),
          child: Padding(
            padding: const EdgeInsets.only(right: 54, left: 54),
            child: Form(
              key: store.registrationPage,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Cadastro',
                    style: h5Primary.copyWith(
                        fontWeight: FontWeight.w700, fontSize: 27),
                  ),
                  SizedBox(height: screenSize(context).height * .193),
                  DsInputField(
                    hintText: 'Digite seu nome',
                    keyboardType: TextInputType.name,
                    labelText: 'Digite seu nome',
                    validator: Validator.validateName,
                    onChanged: (name) {
                      // store.registerUser(name: name);
                      store.setRegisterUser(name: name);
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .012),
                  DsInputField(
                    hintText: 'Digite seu email',
                    keyboardType: TextInputType.emailAddress,
                    labelText: 'Digite seu email',
                    validator: Validator.validateEmail,
                    onChanged: (email) {
                      store.setRegisterUser(email: email);
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .012),
                  DsInputField(
                    hintText: 'Digite sua senha',
                    keyboardType: TextInputType.visiblePassword,
                    labelText: 'Digite sua senha',
                    validator: Validator.validatePassword,
                    onChanged: (password) {
                      store.setRegisterUser(password: password);
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .012),
                  DsInputField(
                    hintText: 'Digite o código da turma',
                    keyboardType: TextInputType.number,
                    labelText: 'Digite o código da turma',
                    validator: Validator.validateCode,
                    onChanged: (acessCode) {
                      store.setRegisterUser(acessCode: acessCode);
                    },
                  ),
                  SizedBox(height: screenSize(context).height * .098),
                  DsOutlinedButton(
                    label: 'Cadastrar',
                    onPressed: () {
                      store.registrationPage.currentState!.validate()
                          ? store.register()
                          : debugPrint('Seis é Muito Troll');
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
