import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/model/extract_item_model.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';

class ActivitiesChildPage extends StatefulWidget {
  const ActivitiesChildPage({super.key});

  @override
  State<ActivitiesChildPage> createState() => _ActivitiesChildPageState();
}

class _ActivitiesChildPageState extends State<ActivitiesChildPage> {
  bool isChecked = false;

  var lista = dadosMock();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Atividades'),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/icons/icon_activities.png'),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Atividades',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: UiConfig.colorScheme.secondary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Confira todas suas atividades',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.normal,
              color: UiConfig.colorScheme.onTertiary,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('09/ago/2020'),
          const SizedBox(
            height: 20,
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
          const SizedBox(
            height: 20,
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
        dateEvent: "2023-10-28", balance: "Cumprir Prazo", valueTransf: '2.50'),
  ];
  return listaDeObjetos;
}

