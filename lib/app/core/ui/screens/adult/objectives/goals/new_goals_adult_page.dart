import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class NewGoalsAdultPage extends StatelessWidget {
  const NewGoalsAdultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Metas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/image_goals.png'),
          Text(
            'Criar Novas Metas',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: UiConfig.colorScheme.secondary,
            ),
          ),

          const SizedBox(
            height: 20,
          ),
          TextFieldOutline(
            label: 'Descrição da Nova Meta',
          ),
          TextFieldOutline(
            label: 'Valor Final da meta',
          ),
          const SizedBox(
            height: 90,
          ),

          Center(
            child: ButtonColorBright(
              label: 'Salvar',
              onPressed: () {
                Navigator.of(context).pop();
                showSuccessMessage(context);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
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
              "Nova atividade salva com sucesso!",
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
