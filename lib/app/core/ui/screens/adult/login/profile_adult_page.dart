import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class ProfileAdultPage extends StatelessWidget {
  const ProfileAdultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil')),
      bottomNavigationBar: const BottonNavigationBarIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,          
            children: [
              const CircleAvatar(
                radius: 80,
              ),
              const SizedBox(height: 20,),
              const TextFieldOutline(label: 'Nome:'),
              const TextFieldOutline(label: 'CPF:'),
              const TextFieldOutline(label: 'Email:'),
              const TextFieldOutline(label: 'Senha:'),
              const SizedBox(height: 20,),
              ButtonColorBright(label: 'Gravar', onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
