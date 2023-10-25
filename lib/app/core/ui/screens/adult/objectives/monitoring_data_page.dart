import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/card_icon.dart';

class MonitoringDataPage extends StatelessWidget {
  const MonitoringDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Monitoramento'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Image.asset('assets/icons/icon_monitoring.png'),
            // Text(
            //   'Monitoramento',
            //   style: TextStyle(
            //     fontSize: 22,
            //     fontWeight: FontWeight.bold,
            //     color: UiConfig.colorScheme.secondary,
            //   ),
            // ),
            const SizedBox(
              height: 80,
            ),
            Text(
              'Relatório de Atividades',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: UiConfig.colorScheme.secondary,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
                child: Image.asset('assets/images/image_graphic.png'),
                onTap: () {}),
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonColorBright(
                    label: 'Editar Atividades',
                    onPressed: () {
                      Navigator.of(context).pushNamed('/editActivitiesPage');
                    }),
                const SizedBox(
                  width: 10,
                ),
                ButtonColorBright(label: 'Acessar Conta', onPressed: () {}),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardIcon(
                  label: 'Pagar Recompensas',
                  dirImage: 'assets/icons/icon_coins.png',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/payRewardPage');
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
