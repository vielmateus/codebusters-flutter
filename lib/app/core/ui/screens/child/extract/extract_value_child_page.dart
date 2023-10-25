import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';

class ExtractValueChildPage extends StatefulWidget {
  const ExtractValueChildPage({super.key});

  @override
  State<ExtractValueChildPage> createState() => _ExtractValueCartPageState();
}

class _ExtractValueCartPageState extends State<ExtractValueChildPage> {
  
  @override
  Widget build(BuildContext context) {
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
                        Text('Calendário'),
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
                    return const Padding(
                      padding: EdgeInsets.only(left: 12, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('19/08/2023'),
                          Text('asd'),
                          Text('R\$15,00'),
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
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
