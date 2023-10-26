import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';
import 'package:validatorless/validatorless.dart';

class RegisterAdultPage extends StatelessWidget {
  RegisterAdultPage({super.key});

  final formKey = GlobalKey<FormState>();
  TextEditingController nome = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController cpf = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/image_icon_register.png'),
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
            TextFieldOutline(
              label: 'Nome:',
              control: nome,
              validatorless:
                  Validatorless.required('O campo nome é obrigatório'),
            ),
            const SizedBox(height: 5),
            TextFieldOutline(
              label: 'Email:',
              control: email,
              validatorless: Validatorless.multiple([
                Validatorless.required('O email é obrigatório'),
                Validatorless.email('Insira um email valido')
              ]),
            ),
            const SizedBox(height: 5),
            TextFieldOutline(
              label: 'Senha:',
              control: senha,
            ),
            const SizedBox(height: 5),
            TextFieldOutline(label: 'Confirmar Senha:'),
            const SizedBox(height: 5),
            TextFieldOutline(
              label: 'CPF:',
              control: cpf,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonColorDark(
                    label: 'Cadastrar',
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushNamed(context, '/registerChildPage');
                      }
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
      ),
    );
  }
}
