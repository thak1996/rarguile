import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/validation/validator.dart';

class ConfirmRegistrationPage extends StatefulWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  State<ConfirmRegistrationPage> createState() =>
      _ConfirmRegistrationPageState();
}

class _ConfirmRegistrationPageState extends State<ConfirmRegistrationPage> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
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
                  padding: EdgeInsets.only(
                    right: screenSize(context).width * .25,
                  ),
                  child: const Text(
                    'Digite seu código de confirmação enviado para seu email.',
                    style: h5Primary,
                  ),
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsInputField(
                  onChanged: (p0) {},
                  hintText: 'Digite o código aqui',
                  keyboardType: TextInputType.number,
                  labelText: 'Digite o código aqui',
                  validator: Validator.validateCode,
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsOutlinedButton(
                  label: 'Confirmar',
                  onPressed: () {
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
