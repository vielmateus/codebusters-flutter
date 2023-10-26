import 'package:flutter/material.dart';
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
                    return cardItem(index: index, isChecked: isChecked, onTap: (value) {
                      setState(() {
                        isChecked = !isChecked;
                      });
                    },);
                  },
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

Widget cardItem({int index = 0, bool isChecked = false, ValueChanged<bool?>? onTap}) {
  
  return Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: ((index % 2) == 0
          ? UiConfig.colorScheme.onSurface
          : UiConfig.colorScheme.primaryContainer),
    ),
    padding: const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('19/08/2023'),
        const Text('asd'),
        const Text('R\$15,00'),
        Checkbox(value: isChecked, onChanged: onTap),
      ],
    ),
  );
}
