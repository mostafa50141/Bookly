import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/Splash/presentation/views/splash_view.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: SplashView());
  }
}
