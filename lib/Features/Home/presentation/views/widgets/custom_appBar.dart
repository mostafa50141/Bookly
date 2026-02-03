import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Utils/app_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Logo.png', height: 18),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 18.0),
            onPressed: () {
              GoRouter.of(context).push(AppRouter.KSearchView);
            },
          ),
        ],
      ),
    );
  }
}
