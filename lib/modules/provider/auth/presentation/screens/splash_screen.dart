import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static const name = '/SplashScreen';
  static final page = GetPage(
      name: name,
      page: () =>  SplashScreen(),
     );
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
