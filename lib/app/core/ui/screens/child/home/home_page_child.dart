import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/botton_navigation_bar_child_icon.dart';
import 'package:flutter_hackaton/app/core/ui/widgets/card_icon.dart';


class HomePageChild extends StatelessWidget {
  const HomePageChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: UiConfig.colorScheme.surface,
      bottomNavigationBar: const BottonNavigationBarChildIcon(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/icons/icon_home.png',
                  color: UiConfig.colorScheme.primary),
              const Text('Menu Principal',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
              const Text(
                'O que você quer fazer?',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset('assets/images/banner_home.png'),
              const SizedBox(
                height: 30,
              ),
              CardIcon(
                  label: 'Perfil',
                  dirImage: 'assets/icons/icon_person.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/profileChildPage');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(
                  label: 'Atividades',
                  dirImage: 'assets/icons/icon_activities_min.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/activitiesChildPage');
                  }),
              const SizedBox(
                height: 10,
              ),
              CardIcon(label: 'Cofrinho',
                  dirImage: 'assets/icons/icon_pig_min.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/safePage');
                  } ),

              const SizedBox(
                height: 10,
              ),
              CardIcon(label: 'Sair',
                  dirImage: 'assets/icons/icon_logout.png',
                  onPressed: () {
                    Navigator.pushNamed(context, '/ageGroupPage');
                  } ),
            ],
          ),
        ),
      ),

    );
  }
}

