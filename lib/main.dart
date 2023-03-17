import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxutils/home_screen.dart';
import 'package:getxutils/languages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      locale: Locale('en', 'US'),
      translations: Languages(),
      fallbackLocale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      // getPages: [
      //   GetPage(name: '/', page: () => HomeScreen()),
      //   GetPage(name: '/screenOne', page: () => ScreenOne()),
      //   GetPage(name: '/screenTwo', page: () => ScreenTwo()),
      // ],
    );
  }
}

