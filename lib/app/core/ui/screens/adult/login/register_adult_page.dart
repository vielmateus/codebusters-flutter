import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/adult/store/adult_store.dart';
import 'package:flutter_hackaton/app/core/local_storage/shared_preferences/shared_preferences.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';
import 'package:validatorless/validatorless.dart';

// ignore: must_be_immutable
class RegisterAdultPage extends StatelessWidget {
  late AdultStore adultStore;

  RegisterAdultPage({super.key}) {
    adultStore = AdultStore();
  }
  Future<void> _save(BuildContext context) async {
    await SharedPreferencesLocal().write('userM', 'vielmateus@gmail.com');
    await SharedPreferencesLocal().write('userJ', 'joaorafarinha@gmail.com');
    await SharedPreferencesLocal().write('password', '123456');

    Navigator.of(context).pushNamed('/homePage');
    // adultStore.save().then((value) => Navigator.of(context)
    //     .pushNamedAndRemoveUntil('/homePage', (route) => false));
  }

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
        child: SingleChildScrollView(
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
                onTap: (value) => adultStore.setNome(value),
                validatorless:
                    Validatorless.required('O campo nome é obrigatório'),
              ),
              const SizedBox(height: 5),
              TextFieldOutline(
                label: 'Email:',
                control: email,
                onTap: (value) => adultStore.setEmail(value),
                validatorless: Validatorless.multiple([
                  Validatorless.required('O email é obrigatório'),
                  Validatorless.email('Insira um email valido')
                ]),
              ),
              const SizedBox(height: 5),
              TextFieldOutline(
                label: 'Senha:',
                control: senha,
                validatorless: Validatorless.multiple([
                  Validatorless.required('É obrigatório informar a senha.'),
                  Validatorless.min(
                      6, 'A senha deve ter no mínimo seis caracteres.')
                ]),
                onTap: (value) => adultStore.setSenha(value),
              ),
              const SizedBox(height: 5),
              TextFieldOutline(
                  label: 'Confirmar Senha:',
                  validatorless: Validatorless.multiple([
                    Validatorless.compare(
                        senha, 'Senha e confirma senha devem ser iguais.'),
                    Validatorless.required('É obrigatório confirmar a senha.')
                  ])),
              const SizedBox(height: 5),
              TextFieldOutline(
                label: 'CPF:',
                control: cpf,
                onTap: (value) => adultStore.setCPF(value),
                validatorless: Validatorless.multiple([
                  Validatorless.required('O CPF é obrigatório'),
                  Validatorless.cpf('O CPF não é valido.')
                ]),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ButtonColorDark(
                      label: 'Cadastrar',
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          _save(context);
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
      ),
    );
  }
}
