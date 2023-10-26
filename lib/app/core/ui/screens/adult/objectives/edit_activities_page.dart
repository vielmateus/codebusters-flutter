import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/show_message_custom.dart';

class EditActivitiesPage extends StatelessWidget {
  const EditActivitiesPage({super.key});

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
          Text(
            'Criar ou Editar Atividades',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: UiConfig.colorScheme.secondary,
            ),
          ),
          const Text('09/ago/2020'),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: listaDados(
            () => Navigator.of(context).pushNamed('/newActivitePage'),
            () {
              showAlertDialog(context, (){
                print('Confirmou');                
              });
            },
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonColorBright(
                label: 'Nova Atividade',
                onPressed: () {
                  Navigator.of(context).pushNamed('/newActivitePage');
                },
              ),
              const SizedBox(
                width: 40,
              ),
              ButtonColorBright(
                label: 'Salvar',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

Widget lineItemEditRemove(
    VoidCallback onEditClick, VoidCallback onRemoveClick) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const Text('Arrumar Quarto'),
      Row(
        children: [
          InkWell(
              onTap: onEditClick,
              child: Image.asset('assets/icons/icon_edit_one.png')),
          InkWell(
              onTap: onRemoveClick,
              child: Image.asset('assets/icons/icon_remove.png')),
        ],
      )
    ],
  );
}

ListView listaDados(VoidCallback onEditClick, VoidCallback onRemoveClick) {
  var items = List<String>.generate(10000, (i) => 'Item $i');

  return ListView.builder(
    shrinkWrap: true,
    itemCount: items.length,
    prototypeItem: ListTile(
      title: Text(items.first),
    ),
    itemBuilder: (context, index) {
      return ListTile(title: lineItemEditRemove(onEditClick, onRemoveClick));
    },
  );
}
