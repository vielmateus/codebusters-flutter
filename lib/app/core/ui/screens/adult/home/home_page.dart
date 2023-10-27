import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/card_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiConfig.colorScheme.surface,
      bottomNavigationBar: const BottonNavigationBarIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/icons/icon_home.png',
                  color: UiConfig.colorScheme.primary),
              const Text('Menu Principal',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text(
                'O que você quer fazer?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/banner_home.png'),
              const SizedBox(
                height: 20,
              ),
              CardIcon(
                  label: 'Perfil',
                  dirImage: 'assets/icons/icon_person.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/profileAdultPage');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                  label: 'Monitoramento',
                  dirImage: 'assets/icons/icon_graphic.png',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/selectChildMonitoring');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                  label: 'Carteira | Conta',
                  dirImage: 'assets/icons/icon_wallet.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/walletPage');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                  label: 'Investimento',
                  dirImage: 'assets/icons/icon_hand_money.png',
                  onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              CardIcon(label: 'Sair',
                  dirImage: 'assets/icons/icon_logout.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/ageGroupPage');
                  } ),
            ],
          ),
        ),
      ),
    );
  }
}
