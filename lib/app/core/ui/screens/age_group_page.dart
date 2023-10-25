import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/helpers/environments.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';

class AgeGroupPage extends StatelessWidget {
  const AgeGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: UiConfig.colorScheme.surface,
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              color: UiConfig.colorScheme.onPrimary,
            ),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset('assets/images/logo_medium.png'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text(
                  'Queremos te conhecer melhor!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: UiConfig.colorScheme.secondary,
                  ),
                ),
                Text(
                  'Vamos começar?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: UiConfig.colorScheme.secondary,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
          ),
          Stack(
            alignment: Alignment.topRight,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/loginAdultPage');
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 32),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: UiConfig.colorScheme.onPrimary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Adulto',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: UiConfig.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IgnorePointer(
                ignoring: true,
                child: Transform.translate(
                  offset: const Offset(-10, -25),
                  child: Image.asset(
                    'assets/images/adult.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/loginChildPage');
                },
                child: Container(
                  padding: const EdgeInsets.only(right: 32),
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 72,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: UiConfig.colorScheme.onPrimary,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Criança',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: UiConfig.colorScheme.primary,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IgnorePointer(
                ignoring: true,
                child: Transform.translate(
                  offset: const Offset(10, -25),
                  child: Image.asset(
                    'assets/images/child.png',
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.04,
          ),
          Text(
            'Prosseguindo você aceitará automaticamente ',
            style: TextStyle(
              fontSize: 13,
              color: UiConfig.colorScheme.onTertiary,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'com nossos ',
                style: TextStyle(
                  fontSize: 13,
                  color: UiConfig.colorScheme.onTertiary,
                ),
              ),
              Text(
                'Termos & Política de Privacidade. ',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: UiConfig.colorScheme.onTertiary,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
