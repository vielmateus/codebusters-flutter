import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/dialog_calendar.dart';

class ExtractValueChildPage extends StatelessWidget {
  const ExtractValueChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    var lista = dadosMock();

    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Extrato'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset('assets/images/image_coins_two.png'),
                        Image.asset('assets/images/image_coins_one.png'),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Image.asset('assets/images/image_cipher.png'),
                          ],
                        ),
                        Text(
                          'Extrato',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: UiConfig.colorScheme.tertiary),
                        ),
                        Text(
                          'Consulte os valores depositados pelo seu responsável.',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: UiConfig.colorScheme.onTertiary),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        //const Calendar(),
                        const SizedBox(
                          height: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 12, right: 12),
                          color: UiConfig.colorScheme.primaryContainer,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Data',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Valor',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              Text('Saldo',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: lista.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: cardItem(
                      index: index,
                      data: lista[index].dateEvent,
                      saldo: lista[index].valueTransf,
                      valor: lista[index].balance),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget cardItem(
    {int index = 0, String data = '', String valor = '', String saldo = ''}) {
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: ((index % 2) == 0
          ? UiConfig.colorScheme.onSurface
          : UiConfig.colorScheme.onPrimary),
    ),
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(data),
        Text(valor),
        Text('R\$ $saldo'),
      ],
    ),
  );
}

List<ExtractItemModel> dadosMock() {
  List<ExtractItemModel> listaDeObjetos = [
    ExtractItemModel(
        dateEvent: "2023-10-27", balance: "Aprender Java", valueTransf: '5.00'),
    ExtractItemModel(
        dateEvent: "2023-10-28", balance: "Estudar Java", valueTransf: '3.50'),
    ExtractItemModel(
        dateEvent: "2023-10-28", balance: "API Java", valueTransf: '2.50'),
    ExtractItemModel(
        dateEvent: "2023-10-28", balance: "Comprir Prazo", valueTransf: '2.50'),
  ];
  return listaDeObjetos;
}
