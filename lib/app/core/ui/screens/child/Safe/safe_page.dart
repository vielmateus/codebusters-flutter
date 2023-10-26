import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_child_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/card_icon.dart';

class SafePage extends StatelessWidget {
  const SafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UiConfig.colorScheme.surface,
          title: const Text('Cofrinho')),
      backgroundColor: UiConfig.colorScheme.surface,
      bottomNavigationBar: const BottonNavigationBarChildIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/icons/image_icon_pig.png'),
              const SizedBox(
                height: 10,
              ),
              const Text('Cofrinho', style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              )
            ),
              const SizedBox(
                height: 10,
              ),
              Padding( padding: const EdgeInsets.fromLTRB(15, 0, 15, 0), child:
              Text('Aqui você pode consultar as suas metas, ver o valor total do seu cofrinho e consultar a movimentação do seu dinheiro.',
                style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: UiConfig.colorScheme.onTertiary,
              )
            ),
          ),

              const SizedBox(
                height: 50,
              ),
              CardIcon(label: 'Metas',
                  dirImage: 'assets/icons/icon_dart.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/goalsChildPage');
                  } ),
              const SizedBox(
                height: 10,
              ),
              CardIcon(label: 'Valor do Cofrinho',
                  dirImage: 'assets/icons/icon_coins.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/piggyBankPage');
                  }
                ),
              const SizedBox(
                height: 10,
              ),
              CardIcon(label: 'Extrato',
                  dirImage: 'assets/icons/icon_cipher_.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/extractValueChildPage');
                  }
                ),
              const SizedBox(
                height: 10,
              ),
              Image.asset('assets/images/banner_safe.png')
            ],
          ),
        ),
      ),
    );
  }
}
