import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/validation/validator.dart';

class ForgetPasswordPageOne extends StatefulWidget {
  const ForgetPasswordPageOne({super.key});

  @override
  State<ForgetPasswordPageOne> createState() => _ForgetPasswordPageOneState();
}

class _ForgetPasswordPageOneState extends State<ForgetPasswordPageOne> {
  TextEditingController codeController = TextEditingController();
  final formMasterKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formMasterKey,
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          decoration: const BoxDecoration(color: whiteColor),
          child: Padding(
            padding: EdgeInsets.only(
              right: screenSize(context).width * .1,
              left: screenSize(context).width * .1,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(right: screenSize(context).width * 0.43),
                  child: const Text(
                    'Digite seu email.',
                    style: h5Primary,
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: screenSize(context).height * .2),
                DsInputField(
                  controller: codeController,
                  hintText: 'Digite o seu email',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Digite o seu email',
                  validator: Validator.validateEmail,
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsOutlinedButton(
                  label: 'Confirmar',
                  onPressed: () {
                    formMasterKey.currentState!.validate()
                        ? Modular.to.pushNamed('/changePass/confirmation/')
                        : debugPrint('Dados incorretos, tente novamente!');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
