import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/data/money/service/extract_item_service.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_child_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/text_field_outline_number.dart';

class PiggyBankChildPage extends StatefulWidget {
  const PiggyBankChildPage({super.key});

  @override
  State<PiggyBankChildPage> createState() => _PiggyBankChildPageState();
}

class _PiggyBankChildPageState extends State<PiggyBankChildPage> {
  int selectedCheckBoxIndex = -1; // Índice do CheckBox selecionado, -1 indica nenhum selecionado

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      bottomNavigationBar: const BottonNavigationBarChildIcon(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon_coins_three.png',
                color: UiConfig.colorScheme.primary),
            const SizedBox(
              height: 10,
            ),
            const Text('Valores do Cofrinho',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Confira o valor guardado para cada meta estabelecida.',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: UiConfig.colorScheme.onTertiaryContainer),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Total do Cofrinho:',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    ' R\$1825,00',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: UiConfig.colorScheme.primary),
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
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  return ListView.builder(
                    itemCount: 5, // Criar controle a partir da criação de novas metas para utilizar Length
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return cardList("Para minha bicicleta", "R\$875,00", "R\$1000,00", index);
                      } else if (index == 1) {
                        return cardList("Para meu PS5", "R\$2405,00", "R\$4300,00", index);
                      } else if (index == 2) {
                        return cardList("Para meu celular", "R\$1640,00", "R\$2300,00", index);
                      }
                      return SizedBox();
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/banner_bike.png'),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(
                          'Valor Disponível:',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          ' R\$100,00',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: UiConfig.colorScheme.primary),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ButtonColorBright(
                          label: 'Guardar',
                          onPressed: () {
                            if (selectedCheckBoxIndex != -1) {
                              showModalBottomSheet(
                                context: context,
                                builder: (BuildContext context) {
                                  return AddValueGoals(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                      showSuccessMessage(context);
                                    },
                                  );
                                },
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardList(String title, String amount, String goal, int index) {
    bool isSelected = (index == selectedCheckBoxIndex); // Verifica se este CheckBox está selecionado

    return Column(
      children: [
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: UiConfig.colorScheme.surface,
          ),
          child: Column(
            children: [
              const SizedBox(height: 8),
              Row(
                children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    amount,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: UiConfig.colorScheme.primary,
                    ),
                  ),
                  Text(
                    'Objetivo: $goal',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: UiConfig.colorScheme.primaryContainer,
                    ),
                  ),
                  Checkbox(
                    value: isSelected,
                    onChanged: (value) {
                      setState(() {
                        if (value == true) {
                          selectedCheckBoxIndex = index; // Atualiza o CheckBox selecionado
                        } else {
                          selectedCheckBoxIndex = -1; // Desmarca o CheckBox
                        }
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
      ],
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
          "Nova atividade salva com sucesso!",
          style: TextStyle(color: UiConfig.colorScheme.surface),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/icon_coins_one.png'),
            const SizedBox(width: 10),
            Image.asset('assets/icons/icon_check.png'),
            const SizedBox(width: 10),
            Image.asset('assets/icons/icon_coins_two.png'),
              ],
            )
          ],
        ),
      ),
    ),
  );
}


class AddValueGoals extends StatelessWidget {
  final VoidCallback onTap;

  const AddValueGoals({required this.onTap, super.key});

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
          const TextFieldOutlineNumber(label: 'Qual valor deseja guardar?'),
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