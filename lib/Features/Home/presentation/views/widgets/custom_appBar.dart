import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Logo.png', height: 18),
          IconButton(
            icon: const Icon(FontAwesomeIcons.magnifyingGlass, size: 18.0),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
