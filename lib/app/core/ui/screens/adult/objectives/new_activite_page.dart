import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class NewActivitePage extends StatelessWidget {
  const NewActivitePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottonNavigationBarIcon(),
        appBar: AppBar(
          title: const Text('Nova Atividade'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Image.asset('assets/icons/icon_activities.png'),
                const SizedBox(
                  height: 20,
                ),

                Text(
                  'Criar ou Editar Atividades',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: UiConfig.colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const TextFieldOutline(label: 'Atividade'),
                const TextFieldOutline(label: 'Valor'),
                const TextFieldOutline(label: 'Data'),
                const SizedBox(
                  height: 50,
                ),
                ButtonColorBright(label: 'Salvar', onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
