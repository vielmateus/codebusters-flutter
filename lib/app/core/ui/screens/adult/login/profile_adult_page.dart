import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class ProfileAdultPage extends StatelessWidget {
  const ProfileAdultPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController cpf = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    name.text = 'Pedro da Silva';
    email.text = 'adulto@gmail.com';
    cpf.text = '123.456.789-01';
    password.text = '123456';

    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      bottomNavigationBar: const BottonNavigationBarIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,          
            children: [

              // Image.asset('assets/images/person_30_40.png'),
              // const SizedBox(
              //   height: 15,
              // ),
              // const Text('Perfil',
              //     style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
              // ),
              // Text('Por aqui você pode editar e personalizar o seu perfil!',
              //     style: TextStyle(
              //       fontSize: 14,
              //       fontWeight: FontWeight.normal,
              //       color: UiConfig.colorScheme.onTertiary,
              //     )
              // ),
              // const SizedBox(
              //   height: 30,
              // ),
              Image.asset('assets/images/adult_exemple.png'),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(height: 20,),
              TextFieldOutline(label: 'Nome:', control: name),
              TextFieldOutline(label: 'CPF:', control: cpf,),
              TextFieldOutline(label: 'Email:', control: email,),
              TextFieldOutline(label: 'Senha:', control: password,),
              const SizedBox(height: 20,),
              ButtonColorBright(label: 'Salvar', onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
