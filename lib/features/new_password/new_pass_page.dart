import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/validation/validator.dart';

class NewPassPage extends StatefulWidget {
  const NewPassPage({super.key});

  @override
  State<NewPassPage> createState() => _NewPassPageState();
}

class _NewPassPageState extends State<NewPassPage> {
  TextEditingController passwordOneController = TextEditingController();
  TextEditingController passwordTwoController = TextEditingController();
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
                      EdgeInsets.only(right: screenSize(context).width * 0.29),
                  child: const Text(
                    'Digite sua nova senha.',
                    style: h5Primary,
                  ),
                ),
                SizedBox(height: screenSize(context).height * .2),
                DsInputField(
                  controller: passwordOneController,
                  hintText: 'Digite sua nova senha',
                  keyboardType: TextInputType.text,
                  labelText: 'Digite sua nova senha',
                  validator: Validator.validatePassword,
                ),
                SizedBox(height: screenSize(context).height * .014),
                DsInputField(
                  controller: passwordTwoController,
                  hintText: 'Confirme sua nova senha',
                  keyboardType: TextInputType.text,
                  labelText: 'Confirme sua nova senha',
                  validator: Validator.validatePassword,
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsOutlinedButton(
                  label: 'Confirmar',
                  onPressed: () {
                    formMasterKey.currentState!.validate()
                        ? Modular.to.pushNamed('/home/')
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
