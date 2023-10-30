import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackaton/app/core/helpers/environments.dart';
import 'package:flutter_hackaton/app/core/local_storage/shared_preferences/shared_preferences.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/login_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/profile_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/login/register_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/money/extract_value_cart_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/money/pay_reward_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/goals/goals_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/edit_activities_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/goals/new_goals_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/monitoring_data_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/new_activite_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/register_child_monitoring.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/wallet/sucess_adult_recharge.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/wallet/wallet_adult_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/age_group_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/extract/extract_value_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/home/home_page_child.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/login_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/profile_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/login/register_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/money/piggy_bank_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/objectives/goals_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/home/home_page.dart';
import 'package:flutter_hackaton/app/core/ui/ui_config.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/safe/safe_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/child/objectives/activities_child_page.dart';
import 'package:flutter_hackaton/app/core/ui/screens/adult/objectives/select_child_monitoring.dart';

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
    var loggado = '';

    void returnLoginPassword() async {
      loggado = await SharedPreferencesLocal().read('log');
    }

    returnLoginPassword();
    returnLoginPassword();

    return MaterialApp(
      title: UiConfig.title,
      theme: ThemeData(
        //colorScheme: UiConfig.colorScheme,
        useMaterial3: true,
      ),
      routes: {
        '/ageGroupPage': (context) => const AgeGroupPage(),
        '/homePage': (context) => const HomePage(),
        '/loginAdultPage': (context) => const LoginAdultPage(),
        '/registerAdultPage': (context) => RegisterAdultPage(),
        '/profileAdultPage': (context) => const ProfileAdultPage(),
        '/walletAdultPage': (context) => const WalletAdultPage(),
        '/sucessAdultRecharge': (context) => const SucessAdultRecharge(),
        '/extractValueCartPage': (context) => const ExtractValueCartPage(),
        '/monitoringDataPage': (context) => const MonitoringDataPage(),
        '/editActivitiesPage': (context) => const EditActivitiesPage(),
        '/newActivitePage': (context) => NewActivitePage(),
        '/payRewardPage': (context) => const PayRewardPage(),
        '/safeChildPage': (context) => const SafeChildPage(),
        '/piggyBankChildPage': (context) => const PiggyBankChildPage(),
        '/loginChildPage': (context) => LoginChildPage(),
        '/registerChildPage': (context) => const RegisterChildPage(),
        '/homePageChild': (context) => const HomePageChild(),
        '/profileChildPage': (context) => const ProfileChildPage(),
        '/extractValueChildPage': (context) => const ExtractValueChildPage(),
        '/goalsChildPage': (context) => const GoalsChildPage(),
        '/activitiesChild': (context) => const ActivitiesChildPage(),
        '/selectChildMonitoring': (context) => const SelectChildMonitoring(),
        '/registerChildMonitoring': (context) => const RegisterChildMonitoring(),
        '/goalsAdultPage': (context) => const GoalsAdultPage(),
        '/newGoalsAdultPage': (context) => NewGoalsAdultPage(),
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

          if (loggado == 'adulto') {
            return const HomePage();
          }
          if (loggado == 'crianca') {
            return const HomePageChild();
          }

          return const AgeGroupPage();
        },
        // nextScreen: const AgeGroupPage(),
      ),
    );
  }
}
// Environments.loadEnvs();