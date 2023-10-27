import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/local_storage/shared_preferences/shared_preferences.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';
import 'package:validatorless/validatorless.dart';

// ignore: must_be_immutable
class LoginChildPage extends StatelessWidget {
  LoginChildPage({super.key});

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    
    TextEditingController userTE = TextEditingController();
    TextEditingController passwordTE = TextEditingController();

    void returnLoginPassword() async {
      userTE.text = await SharedPreferencesLocal().read('user');
      print(await SharedPreferencesLocal().read('user'));
      passwordTE.text = await SharedPreferencesLocal().read('password');
      print(await SharedPreferencesLocal().read('password'));
    }

    returnLoginPassword();

    return Scaffold(
      backgroundColor: UiConfig.colorScheme.primary,
      appBar: AppBar(
        backgroundColor: UiConfig.colorScheme.primary,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sou Criança',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: UiConfig.colorScheme.surface,
              ),
            ),
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Container(
                // height: 500, //Mudar para atingir a responsividade.
                // width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Transform.translate(
                            offset: const Offset(140, -75),
                            child: Image.asset(
                              'assets/images/female.png',
                            ),
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        child: Column(children: [
                          const Text(
                            'Fazer Login:',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff505050),
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          TextFieldOutline(
                              label: 'Usuário',
                              control: userTE,
                              validatorless:
                                  Validatorless.required('Informe o usuário.')),
                          TextFieldOutline(
                              label: 'Senha',
                              control: passwordTE,
                              validatorless:
                                  Validatorless.required('Informa a senha.')),
                          const SizedBox(
                            height: 70,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ButtonColorDark(
                                label: 'Entrar',
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    var user = await SharedPreferencesLocal()
                                        .read('user');
                                    var password =
                                        await SharedPreferencesLocal()
                                            .read('password');

                                    if ('mateus' == 'mateus' &&
                                        'password' == 'password') {
                                      await SharedPreferencesLocal()
                                          .write('log', 'crianca');

                                      Navigator.of(context)
                                          .pushNamed('/homePageChild');
                                    } else {
                                      const snackBar = SnackBar(
                                        content: Text(
                                            'Usuário ou senha incorretos.'),
                                      );
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(snackBar);
                                    }
                                  }
                                },
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/icons_social.png'),
                            ],
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
