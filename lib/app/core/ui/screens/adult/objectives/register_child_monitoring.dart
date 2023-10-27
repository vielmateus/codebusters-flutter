import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_dark.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline.dart';

class RegisterChildMonitoring extends StatelessWidget {
  const RegisterChildMonitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastrar Filho',
            style: TextStyle(
                color: UiConfig.colorScheme.primary,
                fontWeight: FontWeight.bold,
                fontSize: 16)),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Cadastrar Filho',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: UiConfig.colorScheme.secondary,
              ),
            ),
            Image.asset('assets/images/child_example.png'),
            const SizedBox(height: 15),
            TextFieldOutline(label: 'Nome:'),
            const SizedBox(height: 5),
            TextFieldOutline(label: 'Data de Nascimento:'),
            const SizedBox(height: 5),
            TextFieldOutline(label: 'Senha:'),
            const SizedBox(height: 5),
            TextFieldOutline(label: 'Confirmar Senha:'),
            const SizedBox(height: 5),
            TextFieldOutline(label: 'Responsável:'),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonColorDark(label: 'Cadastrar', onPressed: () {
                  Navigator.pushNamed(context, '/selectChildMonitoring');
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
