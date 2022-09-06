import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class ForgetPasswordPageThree extends StatefulWidget {
  const ForgetPasswordPageThree({super.key});

  @override
  State<ForgetPasswordPageThree> createState() =>
      _ForgetPasswordPageThreeState();
}

class _ForgetPasswordPageThreeState extends State<ForgetPasswordPageThree> {
  TextEditingController passwordOneController = TextEditingController();
  TextEditingController passwordTwoController = TextEditingController();

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
              ),
              SizedBox(height: screenSize(context).height * .014),
              DsInputField(
                controller: passwordTwoController,
                hintText: 'Confirme sua nova senha',
                keyboardType: TextInputType.text,
                labelText: 'Confirme sua nova senha',
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
    );
  }
}
