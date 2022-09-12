
import 'package:flutter/material.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/shared/design_system/atoms/ds_mediaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';
import 'package:rarguile/src/shared/validation/validator.dart';

class ChangePassPage extends StatefulWidget {
  const ChangePassPage({super.key});

  @override
  State<ChangePassPage> createState() => _ChangePassPageState();
}

class _ChangePassPageState extends State<ChangePassPage> {
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
                  onChanged: (p0) {},
                  hintText: 'Digite o seu email',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Digite o seu email',
                  validator: Validator.validateEmail,
                ),
                SizedBox(height: screenSize(context).height * .1),
                DsOutlinedButton(
                  label: 'Confirmar',
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
