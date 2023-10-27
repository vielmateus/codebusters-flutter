import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/helpers/environments.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/login_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/profile_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/register_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/money/extract_value_cart_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/money/pay_reward_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/edit_activities_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/monitoring_data_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/new_activite_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/wallet/sucess_recharge.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/wallet/wallet_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/age_group_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/extract/extract_value_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/home/home_page_child.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/login_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/profile_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/register_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/money/piggy_bank_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/objectives/goals_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/home/home_page.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/safe/safe_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/objectives/activities_child_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UiConfig.title,
      theme: ThemeData(
        //colorScheme: UiConfig.colorScheme,
        useMaterial3: true,
      ),
      routes: {
        '/homePage': (context) => const HomePage(),
        '/homePageChild': (context) => const HomePageChild(),
        '/ageGroupPage': (context) => const AgeGroupPage(),
        '/loginChildPage': (context) => LoginChildPage(),
        '/loginAdultPage': (context) => const LoginAdultPage(),
        '/registerAdultPage': (context) => RegisterAdultPage(),
        '/registerChildPage': (context) => const RegisterChildPage(),
        '/profileAdultPage': (context) => const ProfileAdultPage(),
        '/profileChildPage': (context) => const ProfileChildPage(),
        '/walletPage': (context) => const WalletPage(),
        '/sucessRecharge': (context) => const SucessRecharge(),
        '/extractValueCartPage': (context) => const ExtractValueCartPage(),
        '/monitoringDataPage': (context) => const MonitoringDataPage(),
        '/editActivitiesPage': (context) => const EditActivitiesPage(),
        '/newActivitePage': (context) => NewActivitePage(),
        '/payRewardPage': (context) => const PayRewardPage(),
        '/extractValueChildPage': (context) => const ExtractValueChildPage(),
        '/goalsChildPage': (context) => const GoalsChildPage(),
        '/safePage': (context) => const SafePage(),
        '/piggyBankPage': (context) => const PiggyBankPage(),
        '/activitiesChild': (context) => const ActivitiesChildPage(),
      },
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen.withScreenFunction(
        splashTransition: SplashTransition.sizeTransition,
        backgroundColor: UiConfig.colorScheme.primary,

        //duration: 3000,
        splash: Image(
          image: const AssetImage('assets/images/logo.png'),
          color: UiConfig.colorScheme.surface,
        ),
        screenFunction: () async {
          await Environments.loadEnvs();
          return const AgeGroupPage();
        },
        // nextScreen: const AgeGroupPage(),
      ),
    );
  }
}
// Environments.loadEnvs();