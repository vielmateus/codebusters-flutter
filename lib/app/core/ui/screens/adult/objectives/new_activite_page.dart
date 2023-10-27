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
                TextFieldOutline(label: 'Atividade'),
                TextFieldOutline(label: 'Valor'),
                TextFieldOutline(label: 'Data'),
                const SizedBox(
                  height: 50,
                ),
                ButtonColorBright(label: 'Salvar', onPressed: () {
                  Navigator.of(context).pop();
                  showSuccessMessage(context);
                })
              ],
            ),
          ),
        ));
  }
}

void showSuccessMessage(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (contexto) => AlertDialog(
      backgroundColor: UiConfig.colorScheme.primary,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Atividades salvas com sucesso!",
              style: TextStyle(color: UiConfig.colorScheme.surface),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/icons/icon_coins_one.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/icons/icon_check.png'),
                const SizedBox(
                  width: 10,
                ),
                Image.asset('assets/icons/icon_coins_two.png'),
              ],
            )
          ],
        ),
      ),
    ),
  );
}
