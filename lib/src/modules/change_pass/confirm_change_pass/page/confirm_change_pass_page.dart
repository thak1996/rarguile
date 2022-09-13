import 'package:flutter/material.dart';
import 'package:rarguile/src/modules/change_pass/controller/change_pass_store.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/shared/constants/app_colors.dart';
import 'package:rarguile/src/shared/constants/styles.dart';
import 'package:rarguile/src/shared/validation/validator.dart';

class ConfirmChangePassPage extends StatefulWidget {
  const ConfirmChangePassPage({super.key, required this.store});
  final ChangePassStore store;

  @override
  State<ConfirmChangePassPage> createState() => _ConfirmChangePassPageState();
}

class _ConfirmChangePassPageState extends State<ConfirmChangePassPage> {
  TextEditingController codeController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: widget.store.changePassKey,
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
                  //validator: Validator.validateCode,
                  controller: codeController,
                ),
                DsInputField(
                  onChanged: (p0) {},
                  hintText: 'Digite a nova senha aqui',
                  keyboardType: TextInputType.number,
                  labelText: 'Nova Senha',
                  validator: Validator.validatePassword,
                  controller: passwordController,
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsOutlinedButton(
                  label: 'Confirmar',
                  onPressed: () {
                    print(codeController.text);
                    print(passwordController.text);
                    widget.store.requestCodeKey.currentState!.validate()
                        ? widget.store.newPassword(
                            code: codeController.text,
                            newPassword: passwordController.text)
                        : debugPrint('Dados incorretos');
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
