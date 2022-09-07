import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rarguile/src/datasource/datasource.dart';
import 'package:rarguile/src/design_system/atoms/ds_button_outlined.dart';
import 'package:rarguile/src/design_system/atoms/ds_input.dart';
import 'package:rarguile/src/design_system/atoms/ds_midiaquery.dart';
import 'package:rarguile/src/design_system/atoms/ds_text.dart';
import 'package:rarguile/src/shared/app_colors.dart';
import 'package:rarguile/src/shared/styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController loginController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  late final VideosDataSource datasource;

  @override
  void initState() {
    datasource = Modular.get<VideosDataSource>();
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: screenSize(context).height,
          width: screenSize(context).width,
          decoration: const BoxDecoration(color: whiteColor),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 54,
              left: 54,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/RaroTube.png'),
                SizedBox(height: screenSize(context).height * .046),
                const Text(
                  'Seja bem-vindo à Raro Tube!',
                  style: h6Primary,
                ),
                SizedBox(height: screenSize(context).height * .090),
                DsInputField(
                  controller: loginController,
                  hintText: 'Digite seu email',
                  keyboardType: TextInputType.emailAddress,
                  labelText: 'Digite seu email',
                ),
                SizedBox(height: screenSize(context).height * .014),
                DsInputField(
                  controller: passwordController,
                  hintText: 'Digite sua senha',
                  keyboardType: TextInputType.visiblePassword,
                  labelText: 'Digite sua senha',
                ),
                SizedBox(height: screenSize(context).height * .014),
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
                SizedBox(height: screenSize(context).height * .066),
                DsOutlinedButton(
                  onPressed: () {
                     Modular.to.pushNamed('/home/');
                  },
                  label: 'Entrar',
                  backGroundColor: whiteColor,
                  textStyle: h6Primary,
                ),
                SizedBox(height: screenSize(context).height * .014),
                DsOutlinedButton(
                  label: 'Cadastrar',
                  onPressed: () {
                    Modular.to.pushNamed('/registration/');
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
