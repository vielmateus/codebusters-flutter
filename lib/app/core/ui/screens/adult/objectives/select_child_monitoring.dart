import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import '../../../widgets/button_color_dark.dart';

class SelectChildMonitoring extends StatelessWidget {
  const SelectChildMonitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: UiConfig.colorScheme.surface,
          title: const Text('Selecionar Filho')),
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
                height: 60,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 85,
                decoration: BoxDecoration(
                  color: UiConfig.colorScheme.onPrimary,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      Image.asset('assets/images/monitoring_child_exemple.png'),
                      const SizedBox(
                        width: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Calos Eduardo',
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
                height: 500,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [        SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 4,
                      padding: const EdgeInsets.all(8.0),
                      backgroundColor: UiConfig.colorScheme.primary,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushNamed('/registerChildPage');
                    },
                    child: Text(
                      'Cadastrar Filho',
                      style: TextStyle(
                        color: UiConfig.colorScheme.surface,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
              const SizedBox(
                height: 10,
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