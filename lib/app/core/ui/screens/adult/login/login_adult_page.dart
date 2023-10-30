import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/local_storage/shared_preferences/shared_preferences.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class LoginAdultPage extends StatelessWidget {
  const LoginAdultPage({super.key});

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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sou Adulto',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: UiConfig.colorScheme.surface,
            ),
          ),
          const SizedBox(
            height: 60,
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
                          offset: const Offset(130, -50),
                          child: Image.asset(
                            'assets/images/adult.png',
                          ),
                        ),
                      ],
                    ),
                    const Text(
                      'Fazer Login:',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff505050),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFieldOutline(
                      label: 'Usuário',
                      control: userTE,
                    ),
                    TextFieldOutline(
                      label: 'Senha',
                      control: passwordTE,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonColorDark(
                          label: 'Entrar',
                          onPressed: () async {
                            var user =
                                await SharedPreferencesLocal().read('user');
                            var password =
                                await SharedPreferencesLocal().read('password');

                            if ((user == 'adulto@gmail.com') &&
                                (password == '123456')) {
                              await SharedPreferencesLocal()
                                  .write('log', 'adulto');
                              Navigator.pushNamed(context, '/homePage');
                            } else {
                              const snackBar = SnackBar(
                                content: Text('Usuário ou senha incorretos.'),
                              );

                              ScaffoldMessenger.of(context).showSnackBar(snackBar) ;
                            }
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        'Esqueci a senha',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: UiConfig.colorScheme.onTertiary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonColorBright(
                          label: 'Criar Conta',
                          onPressed: () async {
                            Navigator.pushNamed(context, '/registerAdultPage');
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/icons_social.png'),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
