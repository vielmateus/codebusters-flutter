import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';

class PiggyBankPage extends StatelessWidget {
  const PiggyBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: const BottonNavigationBarIcon(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon_coins_three.png',
                color: UiConfig.colorScheme.primary),
            const SizedBox(
              height: 10,
            ),
            const Text('Valores do Cofrinho',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Confira o valor guardado para cada meta estabelecida.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: UiConfig.colorScheme.onTertiaryContainer),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Total do Cofrinho:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' R\$1825,00',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: UiConfig.colorScheme.primary),
                  ),
                ],
              ),
            ),
            Expanded(
              child: FutureBuilder(
                future: ExtractItemService().getOneExtractItem(1),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(snapshot.error.toString()),
                    );
                  }
                  if (!snapshot.hasData) {
                    const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return cardList();
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/banner_bike.png'),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Valor Disponível:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' R\$100,00',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: UiConfig.colorScheme.primary),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonColorBright(label: 'Guardar', onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardList() {
  return Column(
    children: [
      const SizedBox(
        height: 8,
      ),
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: UiConfig.colorScheme.surface,
        ),
        child: Column(
          children: [
            const Row(
              children: [
                Text(
                  'Para minha bicicleta:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'R\$375,00',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: UiConfig.colorScheme.primary),
                ),
                Text(
                  'Objetivo: R\$1000,00',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiConfig.colorScheme.primaryContainer),
                ),
              ],
            ),
          ],
        ),
      ),
    ],
  );
}
