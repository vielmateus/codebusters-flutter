import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class RegisterAdultPage extends StatelessWidget {
  const RegisterAdultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets//image_icon_register.png'),
          const SizedBox(height: 10),
          Text(
            'Criar Cadastro',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: UiConfig.colorScheme.secondary,
            ),
          ),
          const SizedBox(height: 20),
          const TextFieldOutline(label: 'Nome:'),
          const SizedBox(height: 5),
          const TextFieldOutline(label: 'Email:'),
          const SizedBox(height: 5),
          const TextFieldOutline(label: 'Senha:'),
          const SizedBox(height: 5),
          const TextFieldOutline(label: 'Confirmar Senha:'),
          const SizedBox(height: 5),
          const TextFieldOutline(label: 'CPF:'),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonColorDark(label: 'Cadastrar', onPressed: () {
                Navigator.pushNamed(context, '/registerChildPage');
              }),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Cadastrar usando:',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: UiConfig.colorScheme.onTertiary,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/icon_facebook.png'),
              const SizedBox(width: 10),
              Image.asset('assets/icons/icon_google.png'),
              const SizedBox(width: 10),
              Image.asset('assets/icons/icon_instagram.png'),
              const SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
