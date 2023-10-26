import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_child_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/home/home_page_child.dart';

import '../../../ui_config.dart';

class ProfileChildPage extends StatelessWidget {
  const ProfileChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      bottomNavigationBar: const BottonNavigationBarChildIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/person_30_40.png'),
              const SizedBox(
                height: 15,
              ),
              Text('Perfil',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)
              ),
              Text('Por aqui você pode editar e personalizar o seu perfil!',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: UiConfig.colorScheme.onTertiary,
                )
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/child_example.png'),
              const SizedBox(
                height: 20,
              ),
              const TextFieldOutline(label: 'Nome'),
              const TextFieldOutline(label: 'Apelido'),
              const SizedBox(
                height: 40,
              ),
              ButtonColorBright(label: 'Salvar', onPressed: () {
                Navigator.pushNamed(context, '/homePageChild');
              }),
            ],
          ),
        ),
      ),
    );
  }
}
