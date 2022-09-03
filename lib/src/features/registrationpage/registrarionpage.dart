import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController classController = TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Cadastro',
                  style: h5Primary.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 27,
                  ),
                ),
                SizedBox(height: screenSize(context).height * .193),
                DsInputField(
                  controller: nameController,
                  hintText: 'Digite seu nome',
                  keyboardType: TextInputType.name,
                  labelText: 'Digite seu nome',
                ),
                SizedBox(height: screenSize(context).height * .012),
                DsInputField(
                  controller: emailController,
                  hintText: 'Digite seu email',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Digite seu email',
                ),
                SizedBox(height: screenSize(context).height * .012),
                DsInputField(
                  controller: passwordController,
                  hintText: 'Digite sua senha',
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Digite sua senha',
                ),
                SizedBox(height: screenSize(context).height * .012),
                DsInputField(
                  controller: classController,
                  hintText: 'Digite o código da turma',
                  keyboardType: TextInputType.number,
                  labelText: 'Digite o código da turma',
                ),
                SizedBox(height: screenSize(context).height * .098),
                DsOutlinedButton(
                  label: 'Cadastrar',
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
