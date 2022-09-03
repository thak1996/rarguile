import 'package:flutter/material.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(color: whiteColor),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 40,
            left: 40,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/RaroTube.png'),
              SizedBox(height: size.height * .046),
              const Text('Seja bem-vindo à Raro Tube!', style: h5Primary),
              SizedBox(height: size.height * .089),
              DsInputField(
                controller: loginController,
                hintText: 'Digite seu email',
                keyboardType: TextInputType.emailAddress,
                labelText: 'Digite seu email',
              ),
              SizedBox(height: size.height * .014),
              DsInputField(
                obscureText: true,
                controller: senhaController,
                hintText: 'Digite sua senha',
                keyboardType: TextInputType.visiblePassword,
                labelText: 'Digite sua senha',
              ),
              SizedBox(height: size.height * .014),
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {},
                  child: const DsText(
                    text: 'Esqueci minha senha',
                    style: TextStyle(
                        color: primaryColor, backgroundColor: whiteColor),
                  ),
                ),
              ),
              SizedBox(height: size.height * .066),
              DsOutlinedButton(
                onPressed: () {},
                label: 'Entrar',
                backGroundColor: whiteColor,
                textStyle: h6Primary,
              ),
              SizedBox(height: size.height * .014),
              DsOutlinedButton(
                label: 'Cadastrar',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
