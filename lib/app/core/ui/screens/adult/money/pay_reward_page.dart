import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';

class PayRewardPage extends StatelessWidget {
  const PayRewardPage({super.key});

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
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/icons/icon_coins_three.png',
                color: UiConfig.colorScheme.primary),
            const Text('Pagar Recompensas',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Confira todas as atividades a ser recompensadas!',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: UiConfig.colorScheme.onTertiaryContainer),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tarefas concuídas!',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Valor!       ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Expanded(
              child: _listaDados(),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: UiConfig.colorScheme.primary,
                      borderRadius: const BorderRadius.all(Radius.circular(12))),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Valor total a ser pago: ',
                        style: TextStyle(color: UiConfig.colorScheme.surface),
                      ),
                      Text(
                        'R\$100,00',
                        style: TextStyle(
                            color: UiConfig.colorScheme.surface,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 15,),
            ButtonColorBright(label: 'Pagar', onPressed: (){}),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }
}

ListView _listaDados() {
  var items = List<String>.generate(10000, (i) => 'Item $i');

  return ListView.builder(
    shrinkWrap: true,
    itemCount: items.length,
    prototypeItem: ListTile(
      title: Text(items.first),
    ),
    itemBuilder: (context, index) {
      return const ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('19/08/2023'),
            Text('R\$5,00'),
            Text('R\$15,00'),
          ],
        ),
      );
    },
  );
}
