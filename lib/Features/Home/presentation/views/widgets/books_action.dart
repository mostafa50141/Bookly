import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/widgets/custom_bottom.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const [
          Expanded(
            child: CustomBottom(
              text: '19.99 \$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          ),
          Expanded(
            child: CustomBottom(
              text: 'Free Preview',
              fontSize: 16,
              backgroundColor: Color.fromARGB(255, 244, 141, 110),
              textColor: Colors.white,
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          ),
        ],
      ),
    );
  }
}
