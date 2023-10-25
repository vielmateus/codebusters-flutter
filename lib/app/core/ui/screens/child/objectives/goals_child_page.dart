import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';

class GoalsChildPage extends StatefulWidget {
  const GoalsChildPage({super.key});

  @override
  State<GoalsChildPage> createState() => _GoalsChildPageState();
}

class _GoalsChildPageState extends State<GoalsChildPage> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      appBar: AppBar(
        title: const Text('Atividades'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
              height: 10,
            ),
            LinearProgressIndicator(
              value: controller.value,
              semanticsLabel: 'Linear progress indicator',
            ),
          ],
        ),
      ),
    );
  }
}
