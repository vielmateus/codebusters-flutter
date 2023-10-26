import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class ProfileChildPage extends StatelessWidget {
  const ProfileChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Perfil da Criança')),
      bottomNavigationBar: const BottonNavigationBarIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              const CircleAvatar(
                radius: 80,
              ),
              const SizedBox(
                height: 20,
              ),
              TextFieldOutline(label: 'Como ela gosta de ser chamada(o) ?:'),
              TextFieldOutline(label: 'Quantos anos ela tem?'),
              const SizedBox(
                height: 20,
              ),
              ButtonColorBright(label: 'Gravar', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
