import 'package:flutter/material.dart';
import 'package:finance_tracker/Onboarding/onboarding_view.dart';
import 'package:finance_tracker/screens/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:finance_tracker/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  final onboarding = prefs.getBool("onboarding")??false;

  runApp( 
       MyApp(onboarding: onboarding)
    
    );
}

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tima Claude',
       theme: appTheme,
      home: onboarding? const Home() : const OnboardingView(),
    );
  }
}

