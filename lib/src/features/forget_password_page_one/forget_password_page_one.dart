import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class ForgetPasswordPageOne extends StatefulWidget {
  const ForgetPasswordPageOne({super.key});

  @override
  State<ForgetPasswordPageOne> createState() => _ForgetPasswordPageOneState();
}

class _ForgetPasswordPageOneState extends State<ForgetPasswordPageOne> {
  TextEditingController codeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                  'Digite seu email.',
                  style: h5Primary,
                ),
              ),
              SizedBox(height: screenSize(context).height * .2),
              DsInputField(
                controller: codeController,
                hintText: 'Digite o seu email',
                keyboardType: TextInputType.emailAddress,
                labelText: 'Digite o seu email',
              ),
              SizedBox(height: screenSize(context).height * .1),
              DsOutlinedButton(
                label: 'Confirmar',
                onPressed: () {
                  Modular.to.pushNamed('/changePass/confirmation/');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
