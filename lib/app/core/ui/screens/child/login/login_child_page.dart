import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class LoginChildPage extends StatelessWidget {

  const LoginChildPage({ super.key });

  @override
   Widget build(BuildContext context) {
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
                    const TextFieldOutline(label: 'Usuário'),
                    const TextFieldOutline(label: 'Senha'),
                    const SizedBox(
                      height: 70,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonColorDark(
                          label: 'Entrar',
                          onPressed: () {
                            Navigator.pushNamed(context, '/homePageChild');
                            
                          },
                        ),
                      ],
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
