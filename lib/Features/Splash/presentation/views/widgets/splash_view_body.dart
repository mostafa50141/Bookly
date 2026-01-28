import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Utils/assetsData.dart';
import 'package:gap/gap.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        Gap(18),
        Text(
          'Read Free Books',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ],
    );
  }
}
