import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/card_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline_number.dart';

class WalletAdultPage extends StatelessWidget {
  const WalletAdultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UiConfig.colorScheme.surface,
          title: const Text('Carteira')),
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
              Image.asset('assets/images/wallet_30_40.png',
                  color: UiConfig.colorScheme.primary),
              const Text('Carteira',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                decoration: BoxDecoration(
                  border: Border.all(color: UiConfig.colorScheme.onTertiary),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/icon_wallet.png'),
                      const SizedBox(
                        width: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Saldo em Carteira',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'R\$ 998,00',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: UiConfig.colorScheme.primary),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CardIcon(
                label: 'Adicionar Dinheiro',
                dirImage: 'assets/icons/icon_cipher.png',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return AddValueScreen(
                        onTap: () {
                          
                          Navigator.of(context).popAndPushNamed('/sucessRecharge');                        
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                  label: 'Extrato',
                  dirImage: 'assets/icons/icon_cipher_.png',
                  onPressed: () {
                    Navigator.of(context).pushNamed('/extractValueCartPage');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                label: 'Valor da Moeda',
                dirImage: 'assets/icons/icon_coins.png',
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return ConvertCoinScreen(
                        onTap: () {
                          Navigator.of(context).pop();
                          showSuccessMessage(context);
                        },
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AddValueScreen extends StatelessWidget {
  final VoidCallback onTap;
  const AddValueScreen({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/icon_coins.png'),
              const SizedBox(
                width: 20,
              ),
              const Text('Adicionar Dinheiro',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldOutlineNumber(label: 'Qual valor deseja adicionar?'),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonColorBright(
                  label: 'Salvar',
                  onPressed: onTap,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ConvertCoinScreen extends StatelessWidget {
  final VoidCallback onTap;

  const ConvertCoinScreen({required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/icon_coins.png'),
              const SizedBox(
                width: 20,
              ),
              const Text('Valor da Moeda',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const TextFieldOutlineNumber(label: 'Quantos reais equivalem uma moeda?'),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonColorBright(
                    label: 'Salvar',
                    onPressed: onTap,
                ),
              ],
            ),
          )
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
              "Operação realizada com sucesso!",
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
      actions: const<Widget>[],
    ),
  );
}
