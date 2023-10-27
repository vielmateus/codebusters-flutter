import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_icon.dart';

class SucessAdultRecharge extends StatefulWidget {
  const SucessAdultRecharge({super.key});

  @override
  State<SucessAdultRecharge> createState() => _SucessAdultRechargeState();
}

class _SucessAdultRechargeState extends State<SucessAdultRecharge> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottonNavigationBarIcon(),
      backgroundColor: UiConfig.colorScheme.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              'Recarga realizada',
              style: TextStyle(
                  color: UiConfig.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
          Center(
            child: Text(
              'com sucesso!',
              style: TextStyle(
                  color: UiConfig.colorScheme.surface,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
          ),
          Image.asset('assets/images/recharged_sucess.png'),
        ],
      ),
    );
  }
}
