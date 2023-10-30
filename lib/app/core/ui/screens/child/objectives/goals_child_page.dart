import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_child_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/button_color_bright.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class GoalsChildPage extends StatefulWidget {
  const GoalsChildPage({super.key});

  @override
  State<GoalsChildPage> createState() => _GoalsChildPageState();
}

class _GoalsChildPageState extends State<GoalsChildPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarChildIcon(),
      appBar: AppBar(
        title: const Text('Cofrinho'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/image_goals.png'),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Metas',
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
              'Acompanhe todas as suas metas',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.normal,
                color: UiConfig.colorScheme.onTertiary,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Para minha bicicleta:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: UiConfig.colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 50,
                    animation: true,
                    lineHeight: 25.0,
                    animationDuration: 2500,
                    percent: 0.8,
                    center: Text(
                      "80.0%",
                      style: TextStyle(
                          color: UiConfig.colorScheme.surface,
                          fontWeight: FontWeight.bold),
                    ),
                    barRadius: const Radius.circular(8),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: UiConfig.colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Para meu celular:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: UiConfig.colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 50,
                    animation: true,
                    lineHeight: 25.0,
                    animationDuration: 2500,
                    percent: 0.55,
                    center: Text(
                      "55.0%",
                      style: TextStyle(
                          color: UiConfig.colorScheme.surface,
                          fontWeight: FontWeight.bold),
                    ),

                    barRadius: const Radius.circular(8),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: UiConfig.colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        '   Para meu celular:',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: UiConfig.colorScheme.tertiary,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  LinearPercentIndicator(
                    width: MediaQuery.of(context).size.width - 50,
                    animation: true,
                    lineHeight: 25.0,
                    animationDuration: 2500,
                    percent: 0.65,
                    center: Text(
                      "65.0%",
                      style: TextStyle(
                          color: UiConfig.colorScheme.surface,
                          fontWeight: FontWeight.bold),
                    ),

                    barRadius: const Radius.circular(8),
                    //linearStrokeCap: LinearStrokeCap.roundAll,
                    progressColor: UiConfig.colorScheme.primary,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
